Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019BF168C4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 09:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715939447; cv=none; b=dXWrR2fOZCrfOsWjRApVAutrndirgVmlWni/8m9jSgnTJzyOH3cC2OsnPXV7wGHXL0CIpQEBzNn+qcWWDauAHJfYzuQJlgbn2TlrSNVkWxISj0fjEh978HEtv5v8NCRD9wyJhzxhogmvP7GBHLKZZmEHbAKhvI50ztow46Mo2Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715939447; c=relaxed/simple;
	bh=fhRTwQphinv2VlS6AJRfyYsiodI5jbVM5XaQZGh5whA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Nl7ylKVLeVtJ5mO2SrRvdEePsVKYCHMfydI1UIaEvhzySSMFiIVWKegvC/raVdXn2hfkqQM3tJGDLZAgd9dHEM2nPWDMRKn666GhjmwGUraHFS4hcgdLyhYA0dR1cvhq0+hoitgHglSmBmHsd3eVzrrOKZrZJZHp6FM4Cq4xU8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715939447;
	bh=fhRTwQphinv2VlS6AJRfyYsiodI5jbVM5XaQZGh5whA=;
	h=Subject:From:To:Date:From;
	b=b8Sz3kAMs1ExN3SnJRxLZQO3gCJGFWeabg4RFXXE7rn1v7xEhd21+PYNOx8OLjMdI
	 Ecl6RlRGT2E0+ufNRKu8XlZf2jhabtt9uDqrD7TalzKhwMTUUikSnCUSZTf7c9qKz4
	 QZ3HH81S43+l235LUKDntsS7eVsOCdZ82TCOhOQs=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95617C2BD10
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 09:50:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 87FA7C433F2
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 09:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.314 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 May 2024 09:50:46 +0000
Message-Id: <20240517095046.release-4.19.314@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.314
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.314.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.314.xz

Linux kernel version 4.19.314 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.314.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.314.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.314.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.314/v4.19.313

