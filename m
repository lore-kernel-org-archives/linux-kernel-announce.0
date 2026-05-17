Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3BE3B6356
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779032109; cv=none; b=LgQevZAyeNzEKfO54/GNe6PEVb75hhb1Txn5zRSpuVmbUnEpPjzg7PNUWUt6Q8w/sVJHH3ew/3FDFoz3GAai3nSgUt0Tv6D9CvAv6rK34nx36/c+vzmsiYhWU2B9AQPy2tZata6+aT0zhEGvCMVewXp0R52M7SMIhQ2eUsW6rv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779032109; c=relaxed/simple;
	bh=wbumUiPY5MUlsi8RXXjM+QI2sPg7YbJRT0L+gbJENEc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Syr5sWEJ8zVPnuOnXx4r9cETPqcPZNIgeH6t2LwFk/x1YAhJxYgTkmoe3I+fR740nRRjZvyiRPLKx//RO1qVahwToWCZZGKA2SmMbdMRsDljJ+01mVzuGOFWHcpr5rHq+asLnIG298r8z0C69SO8YXdOmdezF8nWYb5Q9LGsE48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779032109;
	bh=wbumUiPY5MUlsi8RXXjM+QI2sPg7YbJRT0L+gbJENEc=;
	h=Subject:From:To:Date:From;
	b=tY8xe2xGIxBSAbuo4B85MY6jyQkDbdhas8OrtQzalmjV0hwhUslxzanqDDA35Ho3q
	 bmcwOjcnNcj2/gCCfZ9E2xMi+yoxSaPoRgetO0sgoY3GXcVbZ9ApkKbwYPwjHCyJKV
	 jASjxpzG4mnEcqIjQS1F7ebsHttvEvv9I2DVrrWA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71F14C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:35:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D09A839308F0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:35:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.32 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 May 2026 15:35:21 +0000
Message-Id: <20260517153521.release-6.18.32@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.32
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.32.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.32.xz

Linux kernel version 6.18.32 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.32.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.32.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.32.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.32/v6.18.31

