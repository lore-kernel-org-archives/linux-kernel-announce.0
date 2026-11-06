Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793991325;
	b=kx+E3W10zNAefXCkHAKLItzuDT75Ykhymts8behLYUuEUP4TArIX8rsxIi1Ye7w2QDjf
	 wW8/oX6ZT+L5DJbLzwYHlaHoxAjyky6bbWMZCvJLDJcHpH2RM9KE5HSQCZ6sHmF8pxFx7
	 bO7k2uLfH4gN+mgwDWqiyUkDyL4TN17WYFIsK3024VuT9MmFrYAOc/pQdAFapqjj/ffFL
	 n+ktLjOgIl+KE5afnxPqgYYXhcIjTvwfNLKDcMMV3uMkspXuX4zRo6z/xJfh9V98jRYpc
	 BJ9A2egP5bmnLhcH3wA/XK+QFT2Twoji/A6f62NFFx2mnmNdb9u3xgwyO/puS18NHpw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793991325;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=EmfO9QEPSS8vBmFvh+k8Ux4DkkHfFTJwWs2VKW0fAb4=;
	b=oiNPydfK93QvaXZHYCA2p0smiI6HO6FGp+Ofb4eaakHAjBPwfiJ1zrqIChTBIXx6m6Il
	 9WcAYeJqJSDG+zM56K8kdHdu+CFcsneh29rC8sqlxGK3XhZwnaj2eZ20e2ct0WxfCj5QH
	 /Juc5EHJiixfhkQ8zAArlmxPTVL8hCBrRPoN42LypqNquNaqFFSeqzI44BDWENV4YLEO8
	 LH3CizfBldNmPaRAs5z/9MunWHwvhvkAdEejb5sOI9lHgJaLB15RUl92mZoIAYt9tEKHc
	 Q1UUOaixhRDLOWndNm6cigudtAq3I3SP7gyKVZUbb7tLs3iMwXrEXMFwoa5HT5E6ACQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177D2606A326
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793991325;
	bh=EmfO9QEPSS8vBmFvh+k8Ux4DkkHfFTJwWs2VKW0fAb4=;
	h=Subject:From:To:Date;
	b=Ut/+AY2/SODp0BC59dr2VfY+dqTJ1saahdJnyk3BxZprkXTrcV5mnwrCq3nQHZner
	 x1Q/SBUiH5lTW3ELq19kIHnDln5ATpM6D8juAe4eWrGLr0yofFfDlaRuVG8KI3qW50
	 cIBBUxDkcnzpoo1h9qFzJEg2c8zgTvK1qu4kOMKubPfjOcZAEdXiUmjITqgf9V+3/P
	 90hsALdVRGOPpEMHgEkhgxVE7ZiTyioXxhIgIwa93SLjHLxxq1BKmlVe2Taarp22Xf
	 gmw23SoxTGsGEW2HbK5qfF1PS/nJow3wg1SHBNKi/z6RoIguKjpi/NbdweNe0DXyAA
	 84hnDmigqnwlA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C11921F008A1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:55:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 86F563A41021
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:55:24 +0000 (UTC)
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
Subject: Linux kernel 7.3.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 18:55:23 +0000
Message-Id: <20261106185523.release-7.3.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.3.xz

Linux kernel version 7.3.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.3.3/v7.3.2

