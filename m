Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7993A451E
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780329018; cv=none; b=VKctIwJVa4A527OUV37RtgX7aj4nc2TRSu18MRPuK6yK1AYq4BeZoGjFaNgH0j7r4r3kBsKg6nSzfKLcakHNi4+6lD2bY8QuGE04KQU4N2s/qOAkVWBj8juxEKX03zi185XA0qAbu62QEAn/N20trJ5S5VuF6W8SQkstQaBFdnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780329018; c=relaxed/simple;
	bh=voRoqRu0/fH3QVDch7PEVyfiwVIniz2FWeVOHe9wO2s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=OX4nSOU/4CGS5Nljhg4957ZL/zfSRc4q+k/Q8vTQG+l6MFHB6VPFTCmuKABny2Vb8Gow31Lm2AKsbz4O143tdr+koVBlE1a1JN06zHBgR33bRatABZXzRIl1GQQfZFlsmnDjwOVRh8tHRUkeLv4mOPDWhE13UeJyOzcV8Gn74yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780329018;
	bh=voRoqRu0/fH3QVDch7PEVyfiwVIniz2FWeVOHe9wO2s=;
	h=Subject:From:To:Date:From;
	b=WNDw0icc11JO2C/+cDWvk66+B5hoPQUsX/QiyHyUdIuzz2b3RoyRHQBdLV5N84Mui
	 JCh38112FznpyH2h4hwB3vvTGSUvoIOYUbtd7g2Z+q35Mfw2RJyceRY6x2dzHjuuxi
	 efRZoBikkmQYpfONcQwa4n+Ly/fYdKjdX+YTnyV0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73A4D1F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:50:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C20138119E1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:50:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.209 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jun 2026 15:50:19 +0000
Message-Id: <20260601155019.release-5.15.209@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.209
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.209.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.209.xz

Linux kernel version 5.15.209 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.209.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.209.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.209.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.209/v5.15.208

