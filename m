Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882AA2D5A01
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785340858; cv=none; b=bu/wXD72Srn+NgswUJk2Mk8sB9zLb+nExzZA/6n7LmwXB8aMLWoJJVCgP9drSaW/JEunUhtbc45v1OAay6eqpR0yGG+w1WW0gubFXHG4VVluClRMjDv3Bg/sz7rlKem36UmOKAqjqUMLLcrMt+Abv33T8BzfFfkFim2JaNylVq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785340858; c=relaxed/simple;
	bh=C19B/buWOaOsz7AJAgb8w93pvwuj9phKNRFz4R7EYyk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=C12r0yW/wg4Bx5Wvw3kCl89wWCcRNIVoaXtMtYQV6SOEdX7wL6aBzzwBBRM5trsxNfZ8O2FgLvIPMXEP1Tnzw4GUz23WQHK5RWHNgxrMpqCL0Oz/V0a8mgFQAdBBCRVbVCxckE/RhdcFO6SEHw2JLY7qMQMfwZF2KP29WlvjZR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785340858;
	bh=C19B/buWOaOsz7AJAgb8w93pvwuj9phKNRFz4R7EYyk=;
	h=Subject:From:To:Date:From;
	b=fTuUgGWIwg2t+jHGJ3qkDr2CXonFleDGOjBZ1FZnZF6cSqzqWItFKAx/oIb+Y1Vqv
	 qrNZTDINx4IgZLqt5Od+IY16WLCL/tqv1kXoUciDSm6+iUsxvxaZBPWaGqc7skgfkk
	 0151lK8VQpjs/7VHqMCiQlX0TzQttffB/hpON/Dw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C75B1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:00:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 93D1639253CF
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:00:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.146 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Jul 2026 16:00:21 +0000
Message-Id: <20260729160021.release-6.6.146@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.146
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.146.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.146.xz

Linux kernel version 6.6.146 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.146.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.146.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.146.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.146/v6.6.145

