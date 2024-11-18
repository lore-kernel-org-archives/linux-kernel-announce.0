Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E130EC2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 18 Nov 2024 05:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731906039; cv=none; b=OfPt4fykx/L3qvkcHC7kW3vw3f4vs6phwwn/vw03LgXFsC+pJixNlOd+95wKCIs/alHH32+JA5yLrUuRa36lLOpTZ7ohi1tKlVIzoHpEOzopZQCc8UEHMYFiNfRTLgjL6GknVcWKrG6tx7Wz9PfKVcw9jYtCJ0ZZ+ObO6AVoE1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731906039; c=relaxed/simple;
	bh=s1oPXdIhdYg8F4U6ki1/LJASMNO4VrkMGsn4o6aknnE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sUvCspPJITehBjCZDRknBlMNRjf/IgypmYAbLGo+8nHszUAzRAlQG5y/XUFqouJhUdQSxbDwYFbuc1ngpmd7l3tYgcFWSEiWm04ucTdamt8AtoPm0je6Sn4mWZhMsrQOtw3JZmpxZJiQawqbPTgTpgKudMShLy0BNfCGwXEd3Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731906039;
	bh=s1oPXdIhdYg8F4U6ki1/LJASMNO4VrkMGsn4o6aknnE=;
	h=Subject:From:To:Date:From;
	b=V9Rc59LYa6LmnWazxWFV9BXCntBczkPo0ONQk8eO+cidmk+sCbUDACGpgxfNB0tcc
	 8w+rBIk4OJkZtITmhJ/SSTSaDvakHSD9NFVeLNj0PMcfsm1O2liJ3okAfUHdIm3Kii
	 tXOEf0iCuMNr/eESJ8c4qcyOEkkZSv2GvlUVqio4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C61AC4CECC
	for <linux-kernel-announce@vger.kernel.org>; Mon, 18 Nov 2024 05:00:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 765713809A80
	for <linux-kernel-announce@vger.kernel.org>; Mon, 18 Nov 2024 05:00:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 18 Nov 2024 05:00:49 +0000
Message-Id: <20241118050049.release-6.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.xz

Linux kernel version 6.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12/v6.11

