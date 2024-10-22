Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0EC83CC7
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729607138; cv=none; b=KU4TSyP2UQEFfdtxFPC/tDxko9TEyeFzB1QVK73BlQJ2/pGU6rpEJxasCqSlAUbvsGYrOSoooPn0SVxc5nsxSfUoawMuDDvJSf/WX8MbUIKEy/bfUSlJ8xGkVlqhGmXezA4EGUnT97/FH7TAJKqd7e0o17IX3ucGajLBUjZpN1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729607138; c=relaxed/simple;
	bh=fiLo2GsY9RE9uSp0q0divqS1IDtgR4X1JP0CgAGOzrM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RzSAQ9UgG9FfNZMKn7xTiH4EoRC6ELrTO8vEPIcBVrQJthPrQX2BKO/87dlzcFeTtMYzx0Mb/qp3S086lXYswtera3X2TKQe2eXPh8d/59vS1Nag+BX6wVSCryWvtAK/wIuO49igAIkxtMtZWeTNWgrR4A8qDOPNoj8RcsdJwBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729607138;
	bh=fiLo2GsY9RE9uSp0q0divqS1IDtgR4X1JP0CgAGOzrM=;
	h=Subject:From:To:Date:From;
	b=bWOcH1p6RivDDF1FHzlyR1Nv46nhXULsCAsC1nVEMKmdVUK/SEpWpdYdAMd5vMSus
	 UC6aDWm2mhrUwEDOyWkOg8qO+VFUU1FPEDubuawM99Ib6QNyerl4XhyjRK/ULdQ6d+
	 SE7EzOhAji4Y5OISvxRssiysXU4igTqjdSDnybT4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 218F2C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:25:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 79ADF3822D22
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:25:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.114 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 22 Oct 2024 14:25:43 +0000
Message-Id: <20241022142543.release-6.1.114@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.114
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.114.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.114.xz

Linux kernel version 6.1.114 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.114.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.114.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.114.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.114/v6.1.113

