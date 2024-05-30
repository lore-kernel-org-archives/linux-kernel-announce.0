Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFC6145B3C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 May 2024 08:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717056644; cv=none; b=nYkSn28HVNZkgCcr1kgd9eLElDaztP1sj9+RmSxRlFTg+qwCDpidgTfSy9/cqfSgVnPhyfZtYbZZSUMBNUYngraQbOVVwdcbLLenLAz/HHchNfMHdynMzc+nPrzTVQQ9vNg/conS3Xf3FmagcIn9YylskW4HOMyCrrzyu0TYfgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717056644; c=relaxed/simple;
	bh=RC/53Xyixz3Oo3tQDW/WDyNkmQ/6MC3vNQuAdfMB4WA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GDyG/yDecS5nILjRoLUbk6otQkXA4NUxfYjy1sZzWqvzlE9RsnclxApXu1eqx18q9y1ip0hRE1kGjE0utogqI/QsqCb0mkEgoW8MFxsKECsqja0i6XcP19w7mvIrUVNUEYTv7qKjSaAtDrqcuK7e1+hY6iJHQkIcbo3HIDF8t/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1717056644;
	bh=RC/53Xyixz3Oo3tQDW/WDyNkmQ/6MC3vNQuAdfMB4WA=;
	h=Subject:From:To:Date:From;
	b=PfU7HpGCptYyrjMumNaLUMtYO16stToyDAHCpO29Wtca1S4Fv2aA2UJsUC7bWPSGz
	 ODbUorgUioClsLy0ZojcEhIjQh+7YFdjrLs/+d+ohE8+r0aK/KEj0lXxwkdC18JoaM
	 BUNfdeFSpXL70IN1J64xTWcQdsNTic8uHTeSBZy0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE716C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 May 2024 08:10:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BFA49CF21F2
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 May 2024 08:10:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 May 2024 08:10:43 +0000
Message-Id: <20240530081043.release-6.8.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.12.xz

Linux kernel version 6.8.12 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.12/v6.8.11

