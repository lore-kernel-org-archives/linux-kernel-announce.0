Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6C81BE251
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 11:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728558652; cv=none; b=EJnxAk3eQ8CnwZByR/ens/KmixExQCutNrp9iW+zpJ7az9VlFYOWASTFpJ8ac/vmS/aJtoTHgFCqcXnm2DMxV0vHoE2fw6qqcSEuxEyxrDa0RzypZoG0l6GwiGXxWY6TiPw7SqlAUakMH5FpMxwm3oVXVnWFIFC2U+CvJj4FCHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728558652; c=relaxed/simple;
	bh=9hd552MyqbZr0kf+m/jDhwy8zV1Nrezujmj2Iw2hD48=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fmZ1CE9dF1pdgVy7U65oT3YJvBcdtPDw2slGaS0BOuAQ5f1sN9Mw/0Htmb9Nho86ksKPGazvfq4eMcVcOtTDh0rXIeOMIWc/Vv14rARBnd1E/Z8nFajk5vYKL09PdqpioWQmAI903Zt3GOMwCsXQfmakP6PIsTTTdA6MtG17TAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728558652;
	bh=9hd552MyqbZr0kf+m/jDhwy8zV1Nrezujmj2Iw2hD48=;
	h=Subject:From:To:Date:From;
	b=DFwEpSF4uElMUPSVaj9AMfguUFsIivhFEXnrdw5232TLOuQ3DcNnTyMHUG1KEGDdO
	 ZX/5OVdrVc1GbifrY3tgE8brz8cVkjuiDtvJKfDMxnvKvLP8Il6sPVSbONGJR6AmYN
	 ggG0DrLTpXdCeHy9G491UVkbzXLnj2DWH/YlqigU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5784C4CEC6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 11:10:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 379493803263
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 11:10:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.56 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Oct 2024 11:10:55 +0000
Message-Id: <20241010111055.release-6.6.56@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.56
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.56.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.56.xz

Linux kernel version 6.6.56 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.56.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.56.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.56.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.56/v6.6.55

