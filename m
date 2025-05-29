Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A653C21D3CC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 May 2025 09:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748511012; cv=none; b=bynxy2VHN9xps7jqJybju8MnFq/8Fgbx5umRGnoyAjuq27WxOiq9JiC9H4oNBNKt4AVLzQ4dBctBgz2ZUxq4+PNdMTMGqI0gwcQPpomiinG0z+R1WHVWndbulTeFZ0TRNptoS8c1okre4pZh0I+tJJypgZ2kjObAH72HUiPLB0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748511012; c=relaxed/simple;
	bh=Oea/DHOueQVBZNVrKayzetT/PokF+iFOaleyrQSDSEQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DPy7iXrX9MAEtYzsSI6mzVoiPq09Z2VAUhL17KeJ4IWt9hGb7n/qOF1ZCvbVg/KjOd8TBQAYZHoOke4n/+/MLduaAyPIjbUMx0AxYUXDwC9DnSzLlLUQ4KVM3d7vYx7t5n2FG00cMwxnu/RSOHb3b6FQrVI/YC/ju5O+EBFjfgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1748511012;
	bh=Oea/DHOueQVBZNVrKayzetT/PokF+iFOaleyrQSDSEQ=;
	h=Subject:From:To:Date:From;
	b=CypTydcxJ5mMCo4bxl+ZP9pRd0eIR5zO1LOWR+MsQFL91N1uaGVRZjBs5hiDmYao8
	 BcLkm86pkDMUlikLLDWPJYLFsQffnK20tMPGSRBY6AtL9hSmBedHNqs3eN1bYLKeWR
	 1AnGZdlu08d/gl0m34xGG/Zpq4APdyl3NMFn15xU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 175F2C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 May 2025 09:30:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE96C39F1DEE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 May 2025 09:30:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.31 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 29 May 2025 09:30:45 +0000
Message-Id: <20250529093045.release-6.12.31@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.31
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.31.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.31.xz

Linux kernel version 6.12.31 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.31.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.31.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.31.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.31/v6.12.30

