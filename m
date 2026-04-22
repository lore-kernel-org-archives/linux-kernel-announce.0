Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C26B32861F
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776870958; cv=none; b=rw0TbX85+LcG8jgoXZDXk2SgLu5C1/eoeOnuwqX82a9i7q8N+5HeERQpGh8xtAsUmYXRMeCNKP2UlB72BWCWZmGaxqZIB9VbO/w9QBRjtdcMKAuq9IiQWmnLIfVInqPrmQtRef/thWvOJCTdq29KFoL6w+YLzlCePMgZUX9V23U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776870958; c=relaxed/simple;
	bh=PYwaKvykieR6UsJb6kRe1EdfiWVL1q+ohOE48AVPQjc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=aCX4NlMU5e1JN81P34dyQPrpHA+j8tHOU95Ud4qxT6MqHCOKlrLcsmShdsRIvl4dFLMMYNtbIuGf8qxs6C1J27RL0/hrGUCH1zdw2Di3TyslRYUxU2i5iA643Lear1AmADoPe9vINMGWbcJZCN7z+7e65tzWm59S6m86uvT1WDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776870958;
	bh=PYwaKvykieR6UsJb6kRe1EdfiWVL1q+ohOE48AVPQjc=;
	h=Subject:From:To:Date:From;
	b=SEVSLD/VRrhZAAheTS1jQLZSkDB1H2OU706ep4sH2VMC1hxOqehU/mKr83468jm2d
	 CeKIGaISWdF/xVPZmA/Go93gaL2q+q7EwsodXRXzjThv6CTNx1kB/4PuaeL4MWv9NJ
	 qUlRhkNVC4zF8BTwwpAWJq/jtqgzLdxyjLgP2FmA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D88C19425
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FDA53930232
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 22 Apr 2026 15:15:20 +0000
Message-Id: <20260422151520.release-6.19.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.14.xz

Linux kernel version 6.19.14 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.14/v6.19.13

