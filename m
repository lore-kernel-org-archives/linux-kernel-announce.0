Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117343B4E8C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434633; cv=none; b=Y9z2VsOV/t6E8e2NsKIJpEQ8QUvSVoNRNSvDgpXeTs1+23nigYeO7bWgzspgHmmL1A6N26sBaTzYQFxn1nI99U8wIQgN8ioiTH5r14FF+d7xnrqynC8TLU3I2FJOtwas9aZg+x22iq8rxbGs8oU7pEcUDK2IKcTuS2yrjajrkDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434633; c=relaxed/simple;
	bh=cFVpO3vcvSo4yd0YmNFBv1VLblND9TgE/P507g/Q330=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ceJxBnlt7ER77JWJnGawlylAka8v6lFKmD9yD+8Gp4Ouq0YWBHrOgxdZBJJX9dtUqH+85ybYq7IWCIlO4hM9XHaS27VVLt5X0rmWhZCSIxdBiFyxTx4Zg3UJ4Pc2cT4FKiOCKz6R6A5DN/3W6ksTqEjQ2iz1PGxKJSlTKSbdROM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774434633;
	bh=cFVpO3vcvSo4yd0YmNFBv1VLblND9TgE/P507g/Q330=;
	h=Subject:From:To:Date:From;
	b=b0TuG/dn1CAQccxLKolO39Izu/midVSKNdjI2EHybJaHPo9Op/4aOcM9hjJSt2Ifq
	 kTwdNNfq5aCWuHuAe2Q5EsmaQF4anI7HJ1Ob1AyUaUCNc6U4apkQCrlIEwU8s8ndaw
	 VBNcMX4dkSpN0zdLGZ/ts2S1PBpGvufqq5ZdXlaI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7DB3C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:30:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FDFC3808204
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:30:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.78 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 25 Mar 2026 10:30:20 +0000
Message-Id: <20260325103020.release-6.12.78@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.78
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.78.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.78.xz

Linux kernel version 6.12.78 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.78.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.78.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.78.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.78/v6.12.77

