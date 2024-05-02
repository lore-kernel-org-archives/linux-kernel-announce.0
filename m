Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509647F481
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714661744; cv=none; b=EIdVx9Z5yJOEgqaWeEZZxHQXXSf0MOrA8BBqE7wAILbyCD6O+E4Kl4Yrz9VVcll2TP1V9KyDQAi9kEhljTf/f/mYyLWRT/GShsHsVpKV85IzdCjV9b7OU1Mz4zR7qNImpZpz6lV7JdkBs3gjoWcS1M5dHmXP+wJw/ZachPZevVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714661744; c=relaxed/simple;
	bh=OlSVMQJs6HPaHPNqHHPdoSToxtSxX2ut+uSXjYja8Us=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RvcshiDt+L9RXzuJrTdhu6gSDO28zZs9TCM0d78XAfi63PiUY7i3D4VdpvByunWGtkM08qb4jaWIyBas2LGf6S65r0WvbAnnj6z+OwsBeIoB6dTx+/xuJwY3oa+9n+SGNNcb7vtjx4xajAWR8wkIssM7wVUpO3iq9lI2mglyR24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714661744;
	bh=OlSVMQJs6HPaHPNqHHPdoSToxtSxX2ut+uSXjYja8Us=;
	h=Subject:From:To:Date:From;
	b=XQzyIULfoLV/X3U78MdHduDwbyzUvU56yFUhbRCiGzZlNm0GcSTc584wuSs/TznKS
	 tYnaQLPkGBPhaHLdLmp32EilthrePKvlOqYazt6S0JjIm2jy+pqtU4w2HgBtSWRBh7
	 VEP6CiwqrEg/d3i8kdu4PCKJeRL6n5QJ7sQtIal4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E719EC113CC
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:55:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D6BBFC43443
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.30 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 May 2024 14:55:43 +0000
Message-Id: <20240502145543.release-6.6.30@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.30
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.30.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.30.xz

Linux kernel version 6.6.30 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.30.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.30.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.30.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.30/v6.6.29

