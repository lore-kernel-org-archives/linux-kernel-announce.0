Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29D7324B1E
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770394550; cv=none; b=ZBqVngeA+W4Gu3QqV+PgtBy13LEr/u1pBcAUGtTATzsMIjgS5ozkzmS/Rq0jDkH5poTE7hfta2C0XmDi17RpDT6fnpCWonmpevSjEPgjEyf0ggVnPSOD3faRavguy9Hasfe7A6e/bBu7NOZ5GFzzpSc7aVmX6OH024Inxl2A2vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770394550; c=relaxed/simple;
	bh=kbYNf8UmUOYxNS1Azzl15obawXnXVs9tJfAwlwkboas=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=W5PhExmlf/ANu3FMD+YX7HmkaHNZPJ2RLiAKkvj6tleax7dmZB9hhE+N5wV5+3fmzKB03vhxlXArTlpdI2SAZgr7ME+rCSVr6aB6Pzexfm5kFBn/tljMwn+CGEJMmQk3LRxBZkc2UzQE6Eo6LsnTgz+OXWmKSUJK5gZPyUW2+g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770394550;
	bh=kbYNf8UmUOYxNS1Azzl15obawXnXVs9tJfAwlwkboas=;
	h=Subject:From:To:Date:From;
	b=XHBEAsHWFGOtklFwiwLMZYEBvNszSouwAG0amUBFdvpFOV7wD+3HflueiY0GL96SX
	 M41jb2q/Pi5orZHzx6QVoRn7RAjJDWA8Ebs1iwX/1mJ5WwwTRNjjw1GxbTcCpQR8qj
	 e4On4v93uDxvqgoS+OmaBqe2pfCDh5yHede+taF8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1C81C116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:15:49 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 482763809A04
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:15:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.69 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Feb 2026 16:15:47 +0000
Message-Id: <20260206161547.release-6.12.69@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.69
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.69.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.69.xz

Linux kernel version 6.12.69 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.69.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.69.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.69.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.69/v6.12.68

