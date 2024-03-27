Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAB41C11
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711518938; cv=none; b=LznA84dGnH5BJVFwxe27wdzEntO5o5aRevkbmTMVFtyZqoLGP3xrR6E3LqTENNUJnRpQU2WYnvL7xruN4XYJtHX+rvo5ZPYkHIjTiHm0US/BuVsRYEQv4aWpX0jV6dADG3k6hg3ssrLxAKay9oNlXCEC4R6bKOZy61PcB97z+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711518938; c=relaxed/simple;
	bh=WfrohqrplD5quJuM5oCtMIGNVQQ4UQQEfAdZOhXni7s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DaSMoXcW6Jiqy/fP48yNQeIYBmUGw2TpAwhR23I0R3Bv4SomXoxoXyjAbeTCMyXIVOdHj9wguUzWn3AghyyWwDevhWZlmcjCcsL98ONZmiXNuAgWOCFefluArlr+AXAHjGBcgVE42U3pt1iLT1oRLwJGseRwsyaez5WDvp2brYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711518938;
	bh=WfrohqrplD5quJuM5oCtMIGNVQQ4UQQEfAdZOhXni7s=;
	h=Subject:From:To:Date:From;
	b=hkk45wOSTJJO3hUMTaltuZysTTL/+0UbTA5eXwUM7lPtFFZAP9fVJk3Qcl0ASmLOe
	 NiIwW+NweSO9MbDOfMq42FZwZravprNjKaeo8j1846WXgyCEKLWCthgyf5RyvRwL7u
	 8RwD3qZWhTVilBU+AlRX5EDprRMJf4CwVcsonBFU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EAD0C433F1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:55:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2714BD2D0EB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:55:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.273 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:55:38 +0000
Message-Id: <20240327055538.release-5.4.273@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.273
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.273.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.273.xz

Linux kernel version 5.4.273 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.273.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.273.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.273.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.273/v5.4.272

