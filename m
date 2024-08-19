Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B461411DE
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724041251; cv=none; b=BKD7Lt0IvjZ49jKuzVrnADWUpu0jQXq2pSLCnumpH5FOEdlfeRsOpHVgSkt6JoO6wIs6xCmOxGkEbvj70ovrCH8jKW/EQOZc/lggyKsPZpVyebU8N5g9G4S7MuzWWrSkfbvp+fNiOGE+y7VKWtshhy3zxMY1a6NYHL842hLOZ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724041251; c=relaxed/simple;
	bh=ZXwSSB00dViYk+OIKo1UW0zygw3O657s0I9Lw50K4X8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LaQlNXD3c4ay3zBfLOacl71LUk+f5wWpoaI/DMRDpoaePxA3OVVb+Kzfddh/osk6cIWB22vzTnGSADZg/vjGmaT5eJgUj3PwoEyrB4R1euoy6MTQGuiQ5kPMZ5smCG0IPGRCb4Vpern06iXQCWXolLcqAHwV5F7iMUDWHc+HeXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724041251;
	bh=ZXwSSB00dViYk+OIKo1UW0zygw3O657s0I9Lw50K4X8=;
	h=Subject:From:To:Date:From;
	b=Tb50aFnx7tyJRcSgs29N1QTC1GMukFodGMvhdZkzHheCPVtlB2gTdSeeX0NA7jLnR
	 EWxfMgR2/5yqXUwiX+JjJqZroUhLoaLYiMuCUuqqVRiB+MJR8fGTY3jjX+E2vNd5PN
	 i3FHjZ2rz2+e/eZlDMMfZzgqTYEMWx4uy5RtDtqg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4107C32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:50 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70A8C3823358
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.282 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Aug 2024 04:20:50 +0000
Message-Id: <20240819042050.release-5.4.282@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.282
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.282.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.282.xz

Linux kernel version 5.4.282 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.282.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.282.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.282.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.282/v5.4.281

