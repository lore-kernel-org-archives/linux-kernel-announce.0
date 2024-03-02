Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6D52BB08
	for <linux-kernel-announce@vger.kernel.org>; Sat,  2 Mar 2024 17:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709401249; cv=none; b=MgVpUPSix8osOoY5HcAb5i0PoyFaFaxETtkurOIodu8gtvFbz8XKKkxjb3DB0uGReJTTQmHIsUfAUPE98rK57XbZ/zF6bBlj2nV1C7LiD/T1hJEzfmQZ0q/wbvaPlSxw53uzmOekZ/oHybXbM8ev8i73PypkTb8KxX/fgbjJiBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709401249; c=relaxed/simple;
	bh=SnZxZ4M7tP4ei2CbXDRWZQ/EKx5Bnvh1jPw1/z8C8vw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UAqlbwmrFp5SuezWrvgc7cRcV+3vYkplXNeYuLJvhO4CJWaU4FFFsiYuDC8h28Ksa0Q8gcGfCn0z16FRxH8ySy0AMQNoLPXfxlgKQy+8KSKQBQEnGf42TPVEgsBLXIxNj62ZLcxgmPOl9PCYwgZzRrRjpESmOW9guY3T4BsB3wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709401249;
	bh=SnZxZ4M7tP4ei2CbXDRWZQ/EKx5Bnvh1jPw1/z8C8vw=;
	h=Subject:From:To:Date:From;
	b=IGJaMuRWvcj36fqOP/ndq/HXHZNPHb4MwXIrPHSy7RH39CLJ6I2kco2aioEBkGbY2
	 t8F5ge3hvRr6dNtZmumcdjHzQ3x9B1qcAC4Sy0TGc5hFuQ+roWj+TvT+1U8TjfMrOX
	 GSQBh3QGUi1/lCwxnnjamw5ev8ruPWboS2KIA23c=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93DE0C433C7
	for <linux-kernel-announce@vger.kernel.org>; Sat,  2 Mar 2024 17:40:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 776A8C395F1
	for <linux-kernel-announce@vger.kernel.org>; Sat,  2 Mar 2024 17:40:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.20 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 02 Mar 2024 17:40:48 +0000
Message-Id: <20240302174048.release-6.6.20@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.20
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.20.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.20.xz

Linux kernel version 6.6.20 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.20.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.20.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.20.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.20/v6.6.19

