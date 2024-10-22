Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EF519E99E
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729606540; cv=none; b=mbmAIpeGw7XEtJyoMtrfNTJQKjv/fQmdIf+ZODCL3eu41D8a/6gDdp973WklfcbFe31HBeCGWjJwf1m5BYz6Ozs43rIeaXqofvTt01VhVUQOey2Kgjf7zkkD5Rs7eYNDqvdi4pvLCLVY8oAWv2UnN/gxRNo9J4Ss4DmroOcelLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729606540; c=relaxed/simple;
	bh=AaJkpkTIoThQRLGO5YZMHUgnDJMyuUZ0v7TQoIJtEfw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JBE5agMIoluOJnOqPps2Qtru7EjLh6lwVk3pRYoBM2FqOUokCPcy6nma1mgf0SY022Xfn/72aGZq9razC/KDH20GNO14inF2HKZqzvuzGS5g2CKQiSzSK6Z+fPawpM2ydeZUDzXw7lm1SWEEX5vOb6claHjazSsyjvu1eaSFioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729606540;
	bh=AaJkpkTIoThQRLGO5YZMHUgnDJMyuUZ0v7TQoIJtEfw=;
	h=Subject:From:To:Date:From;
	b=YnV4C1DR2bWUipqoq5dRRCiul5XBN1GUL20uQaMsqVl2Q/eakhHBZI/t/CYgI2uh4
	 +rgE4lZPgs5BEiwQgl+PlwG6UYio4NhBJT2kDIenmvCfsDcCygQLkf9zdeIZht+ThL
	 8PCPyFspn+Jv+giGv+hpujACkO3KduZJcXgieBGM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A001C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:15:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB1D63822D23
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:15:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 22 Oct 2024 14:15:46 +0000
Message-Id: <20241022141546.release-6.11.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.5.xz

Linux kernel version 6.11.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.5/v6.11.4

