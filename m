Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B09C3254AC
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770813927; cv=none; b=T9GMvqPuS6iqdbkJyogMr5GYh9msgxZo+xqs2h6yuaCUOQxuzGgwPGvMONl1OPa/XbFyva2htK9S39r74PUfXbwL2nVzmmSgJGmjtIRqVxMj+hdBn1qUWRafm/cGnz7i+o2ryfBF78MunxfDtYHxm4s24bXITYTK23+fz2CMjOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770813927; c=relaxed/simple;
	bh=9i//Bc12U5MRplh5xrI2qCEks0G1TXRiUwm9r0z7jh0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=o5bIq2aqUIQHIL9klE1ocyO6KsUr+N1GRrwQoeIl7txxLWoP8joxPYwRcdhnBzpiXXuRxC0lG59Z0FXXnlOAHeNFrLeSJqiEea4h5MHEry4Z3tDsjmVpiTUITrljk9WgmGXbAX7yEjX8G0es9iu/rlRYr0aenVHsM7zZj0dD4iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770813927;
	bh=9i//Bc12U5MRplh5xrI2qCEks0G1TXRiUwm9r0z7jh0=;
	h=Subject:From:To:Date:From;
	b=UdGxpFAQikBPuH30KODsGlTbPC/FTF7mWGNAdYb6s9JrAJwg3oUdZ60cdfmp9j4Ji
	 8FH9nS4oVqPRit5wChjr4ZemwixzXIao01n5HYpdsWzeiTKlYr2LKwtJndx9Yz8Hap
	 O/H3OdyKFvJMDQ1BZa7aTu1wusNEeyM7/v4iEhe4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 017C1C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:45:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0D6B639E9615
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:45:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.250 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 11 Feb 2026 12:45:21 +0000
Message-Id: <20260211124521.release-5.10.250@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.250
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.250.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.250.xz

Linux kernel version 5.10.250 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.250.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.250.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.250.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.250/v5.10.249

