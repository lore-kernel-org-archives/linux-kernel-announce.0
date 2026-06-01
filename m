Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11E12D248B
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780330221; cv=none; b=a37119UCJ9seH+8pwlHieh8ko7YE4nWWFpjDRoqaJ4lj2EoPg2Hw54iS3qbJOTyfu6Ytv02ye+gSoGNk58yoASMfyGDhkQYOeDFleU8JiSFNtExOENLts0zlNdiG2uGkJ9CVvU6pp1IQ3TGGTod9wPyTUhA6ayFhnQ+S3L4jtio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780330221; c=relaxed/simple;
	bh=0A6grGBzvdtfMEBiyiOBrtOnnt51evtEhETIeafvtCM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XumhN1hZfv5ZhZRZhbqHoRLfQKUu5At+v1O6u+6hvQYedRgSQsBV9kDwYAXx3CvFSiA4PUR1QXpGJ+Tkx7O3XzS99wT44RiKKDkWtGwVgPj4wLCOMBPvN21IMiGX6mH+3xyWfPg0FhNaj+1y8bszvP5cU6MebCtOPUC0/Hnit14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780330221;
	bh=0A6grGBzvdtfMEBiyiOBrtOnnt51evtEhETIeafvtCM=;
	h=Subject:From:To:Date:From;
	b=LZ7GHlgZvPVsNNTl/DRavm03ktI2kSkPcJ3it1y9hvRNmzq4O6gOCz9zLdfKbAdQc
	 SRDs14yuycdt/3FrSeFKFs7QngnfKWSsI74yTK4KqNXWH6p3nUw8AK+SvgBPmDLUpX
	 I3J79Nmi5pIKeJP80eEEy7MF/OMBxH6ClzEkazPQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71AAF1F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:10:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C2C038119E1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:10:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.34 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jun 2026 16:10:21 +0000
Message-Id: <20260601161021.release-6.18.34@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.34
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.34.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.34.xz

Linux kernel version 6.18.34 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.34.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.34.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.34.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.34/v6.18.33

