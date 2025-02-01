Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF121C54AA
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738432525; cv=none; b=HXQvXjsrr/P4U2gIrxwjEb52vnyBTILOrKXscldzC2oyPNiznYsvgRBH70wuL/vwNms5h56wYva4H+x1E+GR7FSm9381cCa3++oxuLnhOZnCgGse3k+kTacXzBew2pVivEO3Ip++svOx+2gPRt20gPiP//eOORilS3jS9Pulj8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738432525; c=relaxed/simple;
	bh=8b/damJp4M+o3ovPGOHYq4u5WdvOelyZqcDLzndfsWk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UBp3ikl3eHpmExyGNmiKGcq7EVcmxli7rwWig6VbxjTEUJfflAO84FW6/ubR2fLsZpdzVdQV6TKa9Bt20pRHtqDtWGGKOzvyCzu9Cr82B0Q3vIUGBGypuUHnwncjtpKT8ynTuRSKKpNePQ218v5qIvZBVMkb/2h301l7cmLJpoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738432525;
	bh=8b/damJp4M+o3ovPGOHYq4u5WdvOelyZqcDLzndfsWk=;
	h=Subject:From:To:Date:From;
	b=WqXf1nTbWHXn7R5H1s4C1ODf6BJbsFwBVOGxEtWV0bTHxOC4DN+05Q3uAZ2P2stLX
	 vgOo43kqD6Taxi7b/k5E97jNHNWzq3JzMzMbyTdbxzdlT15Ms/0QeXB7sZ1RmgCdX+
	 bg6R8G+3ti5RzcsKJTO4XmQ9yaX+ib9RCBumKocM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57842C4CED3
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:55:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 348AF380AA68
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:55:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.128 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 01 Feb 2025 17:55:51 +0000
Message-Id: <20250201175551.release-6.1.128@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.128
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.128.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.128.xz

Linux kernel version 6.1.128 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.128.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.128.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.128.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.128/v6.1.127

