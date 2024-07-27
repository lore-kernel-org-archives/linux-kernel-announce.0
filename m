Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A57B665
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722074144; cv=none; b=KFqlj5i/hWavzzvMZG9jSBjkNIUa2AKsHypBAd+hViGsTQZKDCV8AsRRj1QXwOvg0LCmZWWkS+zkzxs8ecRWEWMmYU/tyZWCwsBxc3G3OpuPCvrRv/Mnmq68CZmezr42pgq8txcwX+T0m1kEsjbPCXIyYDCdflVBdNIzv/6QVYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722074144; c=relaxed/simple;
	bh=WJP7gEhEz0wzkoL7yScVFnYo5FT6FO3u77VgQM3GZ5U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eNnBYV17MUQ/BKa5TtVmF6/uLiifMLzsHlAoaj2FOc2uDEZKAqFy0pUUGL5tY7PpbN7BUZLSO8y2Kv4QX9LI36JPvv6w+5YBX93uy3axP1fEvsszu5TIQ6tCLczAuysPjoS++/zzJx0YPjse/N7peDUGpy2cn8FbmG5lLLl0rbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722074144;
	bh=WJP7gEhEz0wzkoL7yScVFnYo5FT6FO3u77VgQM3GZ5U=;
	h=Subject:From:To:Date:From;
	b=HBUqfJoR8/fN1CFteGjcYMpTh4Oi7opQ8OGUcdxLB+OGdHmem1KT/ClzUFvjfrraP
	 rfq87Kj7hEfNwwO/WAeKSwy4ygLKnpj5v8/dkD8009ocGeTPz7dOle47imviu5H8j5
	 nnATcIfWLiUqlYhZY9xI5uFDJArtfIVBVU9ZDaq0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5005C4AF09
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:55:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D2268C43443
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.43 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jul 2024 09:55:43 +0000
Message-Id: <20240727095543.release-6.6.43@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.43
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.43.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.43.xz

Linux kernel version 6.6.43 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.43.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.43.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.43.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.43/v6.6.42

