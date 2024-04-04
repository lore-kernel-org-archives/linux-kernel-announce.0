Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B54D12CD9C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Apr 2024 18:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712256045; cv=none; b=uPmGvhf7zmv4KvYjxMPzFUFkdaGyT/E8c4RFSDOgzAC1hfouQgK60cNWwm93DM7N3qfbvB946aDSdXgRZjqUAGXk5T9Qoy/8eL4dZ2pgYiyFKtAobfdEnElNX35vU5UjGxnILy6q0ctPRSAjKT8arJPlK+0hKMPQenTUiaKPV/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712256045; c=relaxed/simple;
	bh=MELdSwgBQL2d3V+popya3GiYbeIachoVYsWJepC/9vI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hnLflXfxzN5bWPNX5v/H+BlSzaSOeuegfumVjWSpNWD/RNzv0SGhAXt0LPkHru7cV0RSyclzREYoJ/4iv5zwzlKAnPL4Xp0VlBgULc2PPbFz3S26W5kSQdTM6uz+6MAG9pTim471Yrux1UI5EOmvNXFeS7LgxDzglSIOQqZwLWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712256045;
	bh=MELdSwgBQL2d3V+popya3GiYbeIachoVYsWJepC/9vI=;
	h=Subject:From:To:Date:From;
	b=padoqPQ80vB1ldzg8LTI6upUSbiHPRhR3bipJ4BzmENuVirheVTfKho8kgdctW4pX
	 fbjf8Qe9T47nJuKWslvv2X06SLsdXNdZPVL2rGafMHV1Gv8smjgSl6uP0pUyfecfIl
	 gVePaThhnFmFaXfkqCCnS6BwyihYOGBnBBCkVAhE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4EB34C43390
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Apr 2024 18:40:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 3D094D9A150
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Apr 2024 18:40:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.25 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Apr 2024 18:40:45 +0000
Message-Id: <20240404184045.release-6.6.25@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.25
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.25.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.25.xz

Linux kernel version 6.6.25 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.25.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.25.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.25.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.25/v6.6.24

