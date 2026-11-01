Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793538329;
	b=wWkgfgiYOitYyIy4G8UknkDKqCcxkdHfQ1S3DCXelyxObJ6rzvoXoG+SCr0R25uZb/fm
	 TIZlJUNak/1P9XZGl1UatvM8JTpQeMyaL3gBiT8/JtpZ6JgncZzr8hxdOfPNv4SAH76f5
	 Bc9egGbvcoSEJQYNnUfOhYY/kfkyjSVuZzRrQuqWWrAY2ZWB2UEhE5z7vQVRZoCkRcvQz
	 MY9cvX0DVAm46twX1U9aGE9uWXTKV/9L/BMtlzTCBgB4aIB7K0L1Dg2DbVYJ4apszFv6U
	 MjKGBuIAWNr0mYFFAhhFPzgOuti2V5/FOReG+xcrWsdvxbVvzp+m1uTEhdiLpwizCCA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793538329;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=jAlTZVrj0Xb80n0LVevNMX4eOSnUmCAkqn7cSoKl9Vg=;
	b=ZAgURGKgbCdMSlTdB6Z+kn0BHmcabeVyyE+dBXganZFdEa4VRPa8/HOuOkGOHIJH3QCF
	 IigeNenuoM5ICsmEvgS2WwnV0nkpKug++YH2lX0QW780pzjBv/rdqSpkiED48jvgZ8oQD
	 5DN6BuVjcoQRSsu1fNsXKzVw3NN3etTWNPoVBZ1VFt9wdkvY2jogP//orCWTaXupK45Nz
	 is3h+KAmvtagGbWPCtKKAo17U0dD8RyxMWoMtKJ8Kma4YorDKSQ52fzGXfWavvBYyosdQ
	 h0bglcmIakxNGz3GD6JR4LMKExNa3bJuXs8YCgxP13ChOH+l8HSVtgZtWlXl6e12zcQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C6C606A324
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Nov 2026 13:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793538329;
	bh=jAlTZVrj0Xb80n0LVevNMX4eOSnUmCAkqn7cSoKl9Vg=;
	h=Subject:From:To:Date;
	b=c9c74mrN4ToGB0EPLjNlM1wREBcrkady+CKWTLeaCbTBUnErDAJlnUtvZaZ6aMfP6
	 F6pnCvOsNW5zwKWLcxZIbOD3oCRWAhqBSVqSvN7/Aw0SZjvbyE6x0uGLglLbrNzsPT
	 7DLZ9JllwlMlidAY9Sq3wi4WN81HV8yVOtHMhb3JiK6CP6cgOLh19YE+bhSRivU59f
	 dp9UZ7XX/ieABWpTq2pCSeHVKLRo2r4KgKVz07emuHXfYcmmXC/cseMxE4OGq3AXBG
	 6wh4cvZ7X1HuT2Bzu1H3hNgl+9zCWa8m3KSoZ0tuFaazXzH1Oyfxt/qp0lwJBCh1dW
	 +RZ5Mf9u5kFtg==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 711C61F000C1
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Nov 2026 13:05:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42E9338003F2
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Nov 2026 13:05:28 +0000 (UTC)
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
Subject: Linux kernel 7.2.15 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 01 Nov 2026 13:05:26 +0000
Message-Id: <20261101130526.release-7.2.15@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.15
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.15.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.15.xz

Linux kernel version 7.2.15 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.15.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.15.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.15.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.15/v7.2.14

