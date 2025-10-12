Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1992222D0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760267466; cv=none; b=LsfX2iC6DBVERhEclJbttoTAhCmFNJ+p/vYynyDg4TVUlSw5YTzy7/LOCPEo0aHhZ2fpQo+2lgYlbKEy65ym+ZbEi6BNJUCtctRw6bTwVnuq47Y0z5WA5ep3bTky6qg51C75G/CoQfnZqlaJ5fLEfC3voSFTdLJ59DmU/skQmOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760267466; c=relaxed/simple;
	bh=NYDdmlUxHCxbjjC/Dt7ckT7zycZYVgcH0l6HiFaSUY4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lLwnlZf/8C4L2xo8u+hF0fWsdWF6C74X/3cjY1nvgGgLpQO7Ny1WwcFF9zosQmSuAdYwmeuDfrFzosMNomo2LnZ3Ga+LFws6pVrsqKibfNSGCi1YsWJoh4R1/dez699VyAvx+uRlayFBh03n+eLpGtrrjKMQpnnfTtem0CBciW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760267466;
	bh=NYDdmlUxHCxbjjC/Dt7ckT7zycZYVgcH0l6HiFaSUY4=;
	h=Subject:From:To:Date:From;
	b=GecDRN6jupmY0/Kj8YJoiJUyM5d6qWvk83ievVwYmGZvjhvETaezhxGf56kHboApD
	 h3ju8XT5sY0s9cKQbwuJEku8xJ3bPU8Qp/O4z/xw5E+Apk3B2mNypYjz8sdT/uXXsY
	 mComKI7jao8sIn48AkZ3UEDQDqzFL0yz/nss6s2Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2A58C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:11:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 755E93809A1D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:10:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.111 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 12 Oct 2025 11:10:50 +0000
Message-Id: <20251012111050.release-6.6.111@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.111
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.111.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.111.xz

Linux kernel version 6.6.111 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.111.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.111.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.111.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.111/v6.6.110

