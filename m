Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99DE381BA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 May 2024 22:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716764255; cv=none; b=iBTFYWrIcjC1COF6K3XMpIFdiWkJlVNAAaRAzJZ3194HBkGBnNkYeK012HTIOQrqiaQYPd4zvmr4L3FA3YMqxqx6jsAQ01L26QElDKp+rNzJHYSjlKyt/vW9aLeyuFYcGSQ6qhpX7PKsf/LPnBP+6kY8NJC27GNCFzgAbaP0+6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716764255; c=relaxed/simple;
	bh=bVXjtHuGRFaJVma+xlihLdiU/zUDKDaoHd9OkB/VFHk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=B3SrfdgYSSONU6G+B8dYZaskaXvB7yJ+qtTsGaHtZjg1hHpfGNhXNW8DTcCF/RiiTIVXJw5ap/N7ncQjq5FAXpN7LZ1wSZCeHPrW/qYOQLO8JpH1rl/mlzjy8NIZveIuTd8xgikNZ13dPde3MEPoUBBS7FgtiBBHtcRDhbic77M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716764255;
	bh=bVXjtHuGRFaJVma+xlihLdiU/zUDKDaoHd9OkB/VFHk=;
	h=Subject:From:To:Date:From;
	b=mLOeuciC8qxDUQwefRWGwunaCt/xpFPqLEWn9WuJIu7QxyoeXiEZJWLPRA1KwQpJu
	 OfXOq5YbKySYPQkqtHz0fE1J6qt1iBcmV2M4B72kJEncrzLjFrl2EsXo3q0pFvc2z/
	 EhPrdTSRFHBaAoNQrtTZ6yx1p3YEPfGowF4SdQpw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5B070C2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 May 2024 22:57:35 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 41B7FDE4000
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 May 2024 22:57:35 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 26 May 2024 22:57:35 +0000
Message-Id: <20240526225735.release-6.10-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.10-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.10-rc1/v6.9

Linux kernel version 6.10-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.10-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.10-rc1/v6.9

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10-rc1/v6.9

