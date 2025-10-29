Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AC029DB9A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761744065; cv=none; b=HXVUvnTZFIO3hdH9qFW0S4fStDNbNBVOCdfCVgFYSFM/F6hk+QHluNBNrFRnst252znguPjZbeeflULRNRwXlwVQJy8/akyBcpSMXXW9A6+ksOUN25suK3V+63zSIZJDYbEC/DxMTGf6SdG52rVCznPcMbuBg1KIr5Y5IUtM2jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761744065; c=relaxed/simple;
	bh=yYXPytEg7QcO84ps1eoZ9CYX6n9uhuTFTm+zPfta2/Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sBcBcSDUa3LIEwRAXmEQ33sPK7+uLk9EKUgXaR4E60ioeDPyfJM6duezHBKV1ATiYECxuMqnGvacrUQyD9QEL9BIJL1bMYjSjko8DFRCe5AEcyIaC1PfAiwmSq4GPn4/zs5BL26SwCI6GPTdTrBsi/tJnFqT5nzduoPNY8k52nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761744065;
	bh=yYXPytEg7QcO84ps1eoZ9CYX6n9uhuTFTm+zPfta2/Q=;
	h=Subject:From:To:Date:From;
	b=dz8DkR0WoVb1Qokxx+2IQwd4qIUujVaHJcukWA+OfYqEXesBXyAky+slJqhRWv8wH
	 4CsDckyMT9ljPoUrpZFUiU9f3mCD8R0HhCcD+1ncASXahaLqhJ4r76tROA29Vdx7rv
	 g67LWlZhG76ciufs6E1DUcTanxefI56+PVUSObuU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CB5FC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:21:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1B1A3A41009
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:20:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.246 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Oct 2025 13:20:42 +0000
Message-Id: <20251029132042.release-5.10.246@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.246
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.246.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.246.xz

Linux kernel version 5.10.246 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.246.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.246.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.246.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.246/v5.10.245

