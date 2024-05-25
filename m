Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A623347F7E
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716648349; cv=none; b=ixbkPa9eAVGZjA3thpkq8DHRcTkSsXrO7YlYZRyNufSHE9zfysBYxLxPJL7yutXWzX8GyZY+AM6sFEyG1FoM3Z9MpGeQ4gSTRFe46vR0fmPiW6KiFVub6vChYe1y2FF5V1wZiZpKf78331x5BO125FZ4A7PKauDSL8YD1TtQZ3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716648349; c=relaxed/simple;
	bh=eLdovdJ/+/MX6bwywk/M/r74IFwIntcKbDBdao6iPg4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qGkDoznaLPDEnF9b6V/zKQbuFVsbL/DwLC4CroYmZ2AU94unx0GMxdudwkdprR4LX56Up1Dh2vUm7/JgXId0+lnbWz2NoQGqfcWOpFzciJvFRw/Iwn84LJyFaqxz6/migxxXrD/mNZvr08akpCqwDCUI2cI23QugAg1+oMcI/tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716648349;
	bh=eLdovdJ/+/MX6bwywk/M/r74IFwIntcKbDBdao6iPg4=;
	h=Subject:From:To:Date:From;
	b=Qzktuu5NXFJ9+4yxOA0CaH5tqxIaH+B5FUlTl26zg5xY88Iudb2oSadhWKDR05j6t
	 kRWde69L9J1YsJdZzz5FAld6YlqJqCF8ab5AFcvHsMzu+ncPkzQJHZPeSiJnWaKHnm
	 5tngaJQX89vInB6RrItOXqsEZVD2ALwtRcpk5/Dg=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A29C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 53BB5CF21E0
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.32 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 14:45:49 +0000
Message-Id: <20240525144549.release-6.6.32@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.32
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.32.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.32.xz

Linux kernel version 6.6.32 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.32.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.32.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.32.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.32/v6.6.31

