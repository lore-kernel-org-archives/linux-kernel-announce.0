Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAE080038
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 09:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721296546; cv=none; b=AOo2Q8G6U8Kprf11FPZWMRTJP94ottJA23rVSiMUQCNSrQGLqm+J1lcdDPxYC6qgijMnlcAkZ3C8/LCIm2MKVSP2z8fybGu1e8U/Kv1zcp915IrvUuUq4H/wdA+AwGbpWpAB7vvY45tUZr0Q84cDl+snBFt3eD+emlxazQrKwjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721296546; c=relaxed/simple;
	bh=kWe2LS/kzhV9IR/3lnvyKoQogyjKAtnuq7jRMw5Wl+k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kDbqUMaSiina9eiIgzg7q4p5Lf6H99JiOYYOVTzTDHcCImmhBd/eaOWQNet55IP925CpgMVrrzlcskjrMoJxmp4dMWA24etqzRWgcQQO25G7Ri7AJ54IU2vQ8PRhb2UdQFZU6TMB4yxNc+72eJ60xQzgDh2ocg6zPQ1FM5llDno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721296546;
	bh=kWe2LS/kzhV9IR/3lnvyKoQogyjKAtnuq7jRMw5Wl+k=;
	h=Subject:From:To:Date:From;
	b=k8WtlEJ6H1lelS94bWnC2sA7Hd/8EoNm5bFdy2wP6WfhlJtFAi4jVg2/tVOp6X44V
	 Ku+qA9rL+zvCiRtJuvqQCiUgrSZIvkgUA/YqaBHNL6+KfMvlGqQIWmuubi0gk30Nje
	 ytzxcLdbm5wZWu1FKeErMf25RANDzHvsiAWHX4ds=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32512C116B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 09:55:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 254A1C43638
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 09:55:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.318 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Jul 2024 09:55:46 +0000
Message-Id: <20240718095546.release-4.19.318@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.318
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.318.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.318.xz

Linux kernel version 4.19.318 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.318.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.318.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.318.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.318/v4.19.317

