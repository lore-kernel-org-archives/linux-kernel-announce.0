Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EDB5DF1D
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 14:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709736652; cv=none; b=KGk846T3onQ6MH8RQshPHYkztEwz1zDRXoUb7610yQpGr2lWXCnH3DHjx8EOusXsqOWsy6uTyTdx7l6sIbXD9978OJNxcA8TB08SO9EiJ/+B2eamNYh6kISz9LPK0zUVL6WAJdUWe6fNRTMP7Bu38qhuI70GHjLZE/BqlkHS7V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709736652; c=relaxed/simple;
	bh=ZB+qfsv3vKYltEv8lVGWEL+0YQLtVpZfxXmPyQUzr2E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mchsAuEaY86QeabW4CmKtRrK94jVisGGDjPfmO78LQcoQDDwgDtbgrPiGb1bQVERleC69CpOdkM8r689L11Vda18Km7DEDiNmEqddj4SqHwiy7cvMpjGeIuh1YCEbnRmhEDgoDU1YW2JfeBUUGr7V6HhDQMExQBl09rSugV4aTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709736651;
	bh=ZB+qfsv3vKYltEv8lVGWEL+0YQLtVpZfxXmPyQUzr2E=;
	h=Subject:From:To:Date:From;
	b=LJgpzWFDmKUUDOp9H7DN+1rseASYTWAWggMLJuXHhHwm6WubnV2clNfgfiXTm/3dF
	 3FaUuOMOBBXB8b/STY7NjjmdjoiDR4EF5Qi/QHvuRE7J+pw53Hva3l7g9+2hFzEwSu
	 ifNhl1gz3EgwVRAKZdfquld7LCVy1gf98C8huHlk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AADEC433F1
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 14:50:51 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 697C1C3274B
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 14:50:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.309 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 06 Mar 2024 14:50:51 +0000
Message-Id: <20240306145051.release-4.19.309@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.309
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.309.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.309.xz

Linux kernel version 4.19.309 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.309.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.309.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.309.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.309/v4.19.308

