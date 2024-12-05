Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20C61F941
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733404533; cv=none; b=dsX/oC8HabZ7N6OOMNk3ISnVjEYCyRyXw6Oh41AlCtJi98qshszoX5L8UPmVKjcRHEWtXxvWYVmBDfR8QPYImb5dT7qFxRjqMffQPI9v7k6gouF5tkwPX1Z4CFtCh8GnZoUAo+RGsjtnqmsSEMRQRMVGM9cN2x4SOk+IACA3o/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733404533; c=relaxed/simple;
	bh=tok8eq89NvhTQFRn0w1jbopBWRl3m0bILLDI1woCCEo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GkVZnhoVDdOkvFnSVIKTjrby0Khmtx40f+V/cIMFEoHIknZSRVm2rBQa1QB8mSrbZyArfap+AS9wBhcOSmpgJRcBl6OHNERZVGigWw6/uN2TIKOUx9juZl8Id3TWnpTRFct6Pt73ThGi9fbNDPnpSS0JyqoxkosNYijJ4ZXlokc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733404533;
	bh=tok8eq89NvhTQFRn0w1jbopBWRl3m0bILLDI1woCCEo=;
	h=Subject:From:To:Date:From;
	b=YgslXoFH03STb6vv1/F65x0aDRdHWldZbqeDvXpLgBcVBve1jQGBxn2nt+qs55LjW
	 l36Tw1RqE67v0wKHXL/VdKHGTf4uEXQWkoGi1+aLm+jpEn6J0C9lfp4OdKPbsOjjyp
	 QM69symjrAYcQZcmehnB6dr4tNuwT6cy1u/EGKVw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AD3BC4CED1
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 13:15:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 38E83380A950
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 13:15:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 05 Dec 2024 13:15:47 +0000
Message-Id: <20241205131547.release-6.11.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.11.xz

Linux kernel version 6.11.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.11/v6.11.10

