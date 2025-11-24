Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9413027FD40
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 09:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763978179; cv=none; b=fxoGRHsg2y6XT5/uHF6LiygMbkA7VPRwGHphfxw2/KAdwApzFBxmULk5Md5psv8Oi51NbtFiQrvJQYPUHF78ehaYDNKyR5rsKTHLpfcNBcF9D+tsITeA/uZ+7yiq7goqblmgiaAkMJbOAtKFaOydykt32aVHnkH00de25eg9hYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763978179; c=relaxed/simple;
	bh=Sb4kO4WRth9jhwIPmFyf9v1LFG2fy+gcPyAy4ZfQ10Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LFWvBGqABmj7exCTeYKKwO23f0TmJewOHowoM6bATgz3XDPLiZK8AVVM6RNmM5MXVnPItoLEKI1muwgKCZqCiFsabcAQPuqvGhjRRBPMsYyYKUqqnRTRrpV+ABQ3VfnBHOILfCmEIYJbbYbsaPhwouwowYzi+o5wd9zkYlCGvnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1763978179;
	bh=Sb4kO4WRth9jhwIPmFyf9v1LFG2fy+gcPyAy4ZfQ10Q=;
	h=Subject:From:To:Date:From;
	b=bvoDeCDAg6GexJ4HykVBUNPFXnaCeN1/y9kB80G3pl4Mfppq5mvf7SFV1dDqWsJYm
	 fSm40v6fDkQtFe9qWNJ4TEl+p9/Lv3uKjDqByO6fvOoxH5QC2m5mTtkv4Qf2YHZpjx
	 V4uVb4ap6GZDe5CMFXO2CkUDh2c0fNQ68qdpAcUE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3860DC4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 09:56:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7792D3A8625B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 09:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.59 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 24 Nov 2025 09:55:41 +0000
Message-Id: <20251124095541.release-6.12.59@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.59
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.59.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.59.xz

Linux kernel version 6.12.59 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.59.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.59.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.59.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.59/v6.12.58

