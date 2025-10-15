Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F324731B825
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760523057; cv=none; b=FId8u07UgQWO8ByCxdwrV39vHpZTkPZw/AGEDLiHW9chsBVc7+qa23VZ0PEf6DA6YdXA9tOIydLBD+i2LzHZK40PbkXuA8LgQY5fwlhIUxlk8Gd2GgGX+mr5dtv3XFP3f/krsbSMPzhP2GFFlryFDsQBMUWopfVqT8jZ2t3y0L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760523057; c=relaxed/simple;
	bh=NmWuUk4YEppB7VNNiDwOB8sEOQp9wvg4r8TV1GwMCYg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZVBZgdfVdRSOg0mnBgR/R9xhIgcZA1VbSPOrs23iQ4W4RkhDW5LNzfPU5ZG1E1SPXf+fbhVVRSdjX3jYC8evRcxFJ9PZbgcv4osWPrSNDo5j8topMBz2i061TNu88mAGdRwslWL3f1BiYkQcxSAkiS7XaTmUM1NO1+bZqryXCpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760523057;
	bh=NmWuUk4YEppB7VNNiDwOB8sEOQp9wvg4r8TV1GwMCYg=;
	h=Subject:From:To:Date:From;
	b=dMPra2+QptdUOTSdFoJAQc+iy6fKoW5UTTRTgZPPm/IptrjKIX2HcUG/rod5NT1Mu
	 aemjv3srcZbZSZWBq9SR5OyKsINhMsKhiCqLdOJyZpODiYaccRlTvDnrzuUS4qVs4i
	 jslXxd8mRhdLmapQfHi1vmKdS+NynIVl6h286NUA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A40EC4CEF8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:10:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9869E380CFDE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:10:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.156 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 15 Oct 2025 10:10:41 +0000
Message-Id: <20251015101041.release-6.1.156@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.156
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.156.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.156.xz

Linux kernel version 6.1.156 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.156.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.156.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.156.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.156/v6.1.155

