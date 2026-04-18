Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD5537C92F
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776502553; cv=none; b=XKGG8khg8+fJ8RdebaciYnJl8ViTg/hFARpAQ4NkMngNxo3DMHhADrvcs1Iupk7Q9fZ94XZyc3EpKG6FJxo0lUfYkvXwZsTzSv59je+R/6Gt584WzjIltv4oAuFj68HZRgRZcj4jXazKEUA1Ol7OXu8jITYS/WUM2nNNOPVD9Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776502553; c=relaxed/simple;
	bh=a2+XY0yoWyrVHDgKGbwMo+u59oosO9PiMqMqQIJS6+M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ltX+nNXyjmY2rrWLepyRrJ3NvQ5kK/Tf1M6xL0IHU3sywRd8kdiq5uzSlNn8hM6yLAg3/Mv4bh4GvRaM8d/29iNUhaIQZC/pO5Of2058uGB5sd5AIauDzRrasmTvTF/o1VgQiLpTdAz/RL9e6qY3sbge8SM/wgYYRwXxzjOznOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776502553;
	bh=a2+XY0yoWyrVHDgKGbwMo+u59oosO9PiMqMqQIJS6+M=;
	h=Subject:From:To:Date:From;
	b=gWnTePCX0ntPt6vXrKT774LJZT3hJSzloOCtlKUQ3WT7w6KHs3iAmC2+s/SPqDcWM
	 vwDzl5sfTczloq7QS5xapPRwVvcecnEgBFlp/8c1KQAKMaWD7ucEfp42VLDpLaRiPb
	 n8EuZOebCLhCm/0OKZR44YH/LFpxGPfz4cnZetvM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46898C19424
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:55:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42B0A380CEEE
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:55:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.135 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Apr 2026 08:55:19 +0000
Message-Id: <20260418085519.release-6.6.135@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.135
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.135.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.135.xz

Linux kernel version 6.6.135 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.135.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.135.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.135.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.135/v6.6.134

