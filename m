Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3B6D2EE
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722668755; cv=none; b=tr641+RJCUhawvw97Sc8ZkDo6QNNqVPPWJtnpwx8rkMWokj4D6JjMKdPsjSEafUR6E9UQxxqlacKFMFlbzaDimGAr10/t3y0LodbRKQMFmdN51q0Bg48RbzTep5R/gAoRnwEkX2Ba1/397ZBc+/QOpg/NQORvwhnyJOSSD/Hr3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722668755; c=relaxed/simple;
	bh=wh3o87DNXwTNo98bDK80H3rCIFUDkSwiBLT/+q12Wy0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=b8/M5S1kXj1qbTh3d232Gu/Xdew5WPs9+BvYLHbA6drjcfW5bKZSDEB13ENAOJhADOv5vrJgeuQ2o0oj7LbHgtLi1pDj2ZZHFrXRl50t/lVzLQ0CywtRyatYPooT1H20cHn2k285OjaeH2xQmci+sIBI9DKfm3KoOA0jt+rhZG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722668755;
	bh=wh3o87DNXwTNo98bDK80H3rCIFUDkSwiBLT/+q12Wy0=;
	h=Subject:From:To:Date:From;
	b=HQSy0Qntk5KqLK+6KEm2pQrVQfl69abrWn34JfyD+BYmRvZQ9zfYQpaGipdtcIeNF
	 cxS83y8PPIjz59hXoH5ViwGrY0g2OIZU7grooliNwmcP7ripj4BWQZO4gNzpnPbEDv
	 OiPllPuhFnUQD9wOQ4Hc/xUqAO53xy8kDSc8jhsY=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05E74C4AF0A
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:05:55 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E766FC4332C
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:05:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.103 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Aug 2024 07:05:54 +0000
Message-Id: <20240803070554.release-6.1.103@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.103
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.103.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.103.xz

Linux kernel version 6.1.103 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.103.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.103.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.103.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.103/v6.1.102

