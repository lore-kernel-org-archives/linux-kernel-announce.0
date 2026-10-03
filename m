Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B0537F8B6
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791024023; cv=none; b=RNPIKBGrW0p8T8lpymoE0GIEYCQiGrRDEPa6QRHi4JJHsm14Qt3L6vA+xMVUOgStcqsISRl5VFkxZi+vMxMgVx/6lmTsCZ+7FkQupLbyDrC2FGo2MmkZjzaoKVYYJiux0SEURU3YETUUfoimeNaD1TgHZlWrCilPzq9cK4BVTos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791024023; c=relaxed/simple;
	bh=t0RhK5hTwMySuPAgXHTNNIRIa6WqHR5u35MlSFh8HZ8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=L06KynrAlm8Xa9/q2Hlmua0gXym1LQokZVuX2B8RXfMp+SNCW3eezclLSwb70kA0tyacsNLc+LIvrGNdUVhEuztkzy/eEgFvACtVAr+QEbaM7tJTiEGAP1eze5DVGCejdKl19NKa4znKJvHt8g+hcWIhsfPo1Jto6vdXuh1dd5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791024023;
	bh=t0RhK5hTwMySuPAgXHTNNIRIa6WqHR5u35MlSFh8HZ8=;
	h=Subject:From:To:Date:From;
	b=lmRsKRtmtbAxSq/zp8utCNCwOcvC5ZcbThR2urwzV74j3NYah4YItBSVo7llEhLw9
	 78PaSE+g2hGul9veWUL2OVzTrnMg1X+BkgFHoQITDge7sKCbh/yvBPhT+1FyS6NzK9
	 RED1/RDLVntbdy6FuBlJg6uI+fIb1RZmQthkFcvY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FBB01F0089B
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:40:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3D79D3924460
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:40:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.222 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Oct 2026 10:40:21 +0000
Message-Id: <20261003104021.release-5.15.222@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.222
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.222.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.222.xz

Linux kernel version 5.15.222 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.222.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.222.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.222.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.222/v5.15.221

