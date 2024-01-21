Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB62F38F89
	for <linux-kernel-announce@vger.kernel.org>; Sun, 21 Jan 2024 23:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705878403; cv=none; b=ue0nKMtsbwKQhhPMYMx+WomuWjZNRluv2pChS5YRXF5Lx5FIxt/5n0BreZE8cP0ZV9RQv+JXLaZ2M6wcZvw1vs6XkdzEojy91XI23aV2zBNdcMaWT8ZihWJnnOlTm2mwYp4/SisJeZo4ccVzwmsAtrHj3R1UKSdA01HFrguXP5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705878403; c=relaxed/simple;
	bh=A+Fn0VQGIPqO9C2Edxslilx+7P+AsRwoHjHjke2Z5bI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HKXr5ISDeI8qfes7e+IsniBYL+CtteTpgzpWmiJSqJMPtzNt18v2zlLLCJ8x9Lj/o80hIF9MYUlyOdl0+Fqnqss9RM3123Uve2rt8BDvg60wbi2XdNZQXoZ6t74N28Jji+ug+JiCjANFbVU9K6QkZwXGnaqa4EFfFgk5wzKhFUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705878403;
	bh=A+Fn0VQGIPqO9C2Edxslilx+7P+AsRwoHjHjke2Z5bI=;
	h=Subject:From:To:Date:From;
	b=UHhBESKCbb8mEsDvx6yzcYg1tswhaapn8VYpA8P/yKmsyNJ2WTX+Uh+Tf4MihyP5p
	 9BuXyh+3IXjSyUAYYi9r+jwe49y/KbyZKnq0NIaQth99eGtipQT5NMkzX1mq2UMNzj
	 +2QANUID2YSRwUIMI8juwmEr9mFhrayb2dy+ch6g=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B52EC433F1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 21 Jan 2024 23:06:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 215EEE0B610
	for <linux-kernel-announce@vger.kernel.org>; Sun, 21 Jan 2024 23:06:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 21 Jan 2024 23:06:43 +0000
Message-Id: <20240121230643.release-6.8-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.8-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.8-rc1/v6.7

Linux kernel version 6.8-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.8-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.8-rc1/v6.7

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8-rc1/v6.7

