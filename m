Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DD41E2823
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745138103; cv=none; b=H7w48wQ9FXjo5qOSPPsxCLl89j2+scTCH9dWMuybDP41fKsWyTzct6lLhwswbgHqpg/l1GLXxKSzCkLFUZ/F58BJYy/2onNn8bkz59OPX8UJvNEiWljO2qh3wNuB5JG5xKJy3sNRMRRpEcDPFsVpQTanevjcvf4+z/G0mGzx7os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745138103; c=relaxed/simple;
	bh=qyKuYzg5O8k7W7J5A/K2zYfBE3LEsjHVnMB3HH0J5v0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mM8VAk+MdFWieWdQNLekbjAADmibgstGlv3yeOEzMAkalCLro5P+MlraWhoSfDOzmnhe5+Op/w6ZpgWpf4zeYW5KlpM5M1ZNMux45VnNd1WMgSpzx2UZ+1Fxb0Wg3cPFvFOGVJ1vU2qa68huPwKCWCKzhlsTWBEfjx5z9g+9hGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745138103;
	bh=qyKuYzg5O8k7W7J5A/K2zYfBE3LEsjHVnMB3HH0J5v0=;
	h=Subject:From:To:Date:From;
	b=UBDPHetIBNY3RZNO27S42eFSm+Q55iD+Dl+Ln451k4SNH1xqN4ycXmR9h/nINMVyR
	 dvoHIkd+E2cDVmTnufmSdMdm5qwfD/BVjwdU7t+NGW6m/K/gdjnsQARkss+XDu1yun
	 x989AHLNfUfhz+teFEjTFIaXwQwk+jmYZRbJXrBs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFB2CC4CEE2
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:35:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3ACA838111D4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:35:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.24 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 20 Apr 2025 08:35:40 +0000
Message-Id: <20250420083540.release-6.12.24@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.24
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.24.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.24.xz

Linux kernel version 6.12.24 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.24.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.24.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.24.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.24/v6.12.23

