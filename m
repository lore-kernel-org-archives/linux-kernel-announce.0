Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793363722;
	b=foTI4wWvTJIbU3/R9u+/LQ+CljzMeqfqjMF+8dK/Ou/lUJjDwY2BJ7a3UB0o8hIuAJhC
	 K5bXAtS6yUKdvTIVKkWnKcrAjzQKMT9gs7eki0x4aVqQ0ajDHemesN9D6XNudu8oDRx5b
	 koLY18eX5CawfzRk/6QRSvkQ3e4R+VKS+fRHNA1CzXZH4q00fYfc98Tly47RREScB9ZRG
	 RVgwkAiDhrbH0eRZ3rkm1/+kIBYLWIFP1djnUla31/OxTRZMsSR4BwfiOIRGlBE9Jib7u
	 17ryR2+F4cd0YqkOusaZpt5+R21++9VpJOq0pk9CEMAcaAi0CGTMHfZErfu8Ga1JCUQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793363722;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=/2ZbCPiC/0IUudvkkFuHQ2E1Uhdk1mHy1eveMtYb7VA=;
	b=2RYsbp/gp0EkCycTY3SUb0Ni2PIeTJnvt9nFHlBtw8cq97ctT/ILI5HNEULv0yAbccG/
	 cmXoTRqQ12q8hwpBYtT5aoVQ7KpZisROowgq6xvSPwVXtkR5MKK4pphUrgpnEwbg2z3N4
	 IP6oxZk1AXyQaBP1yK4nfRvyOZsqM7NoHV0Gv8Wl5Z29llBG45CelSuN0Qu4e2tEBmOSF
	 tjsw3Jpp4mtDAQSEbFsV6fJ1O5V+4o1pujd3r7Pg8ZhG7ZsUYTP9d4LiFN6syhMR2gakz
	 mzQNPgd7FECFPWN3RGxAWXqAVdiTNiKfk90/d7x8R9aGazsRaFhD+tkgSj9hpAvLy0g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059A1606A31A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793363722;
	bh=/2ZbCPiC/0IUudvkkFuHQ2E1Uhdk1mHy1eveMtYb7VA=;
	h=Subject:From:To:Date;
	b=TBG31w7W/+oM3UFZmpN05J0sZkOcINhWK2qw2YrA/orfDAxxOSpKuX/sysz8kBSIJ
	 MuwLfjxAweuZeAMqCz+PWbh9EsmoSVe95yZd5DeIw+YUJXPVrPg3ADa2NEUNFdF6Z/
	 xzm4ZB9CE+dfkEyI6aWdKEb1cUVN/+vc7ZqMAYXkKo5xs7tWxl2qr+UKqTc+DRNZ5V
	 iqi4NiQUFfrprfi19OHZ3maxkkQajDLaD3aC8Y3m7fBPXAv+bSTpyOLrHdI4q3uOQk
	 YglFj9EAqdZgxyB5oZrvzBcPH8P/UgOD5wmMPsGYpms3FVHm/9FHWOA2EEPLUcu+Q5
	 +BM3+DTgL0caA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEB8C1F000C1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:35:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7FD9C380045C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:35:20 +0000
Message-Id: <20261030123520.release-7.2.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.14.xz

Linux kernel version 7.2.14 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.14/v7.2.13

