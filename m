Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92ADE80638
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721302544; cv=none; b=k8o/PfmvK7HNJSgUheO3K0bAiWgofPswG2IpRorAWDPUwKSBa3lrZNO1e7qQ47piacu1NRorDmGJyRRs8rxUQ072BkIz0Fy27Plv5bTPqMjcS5R/Q/xSHv8tUYgCcIOqFlFX6jmYBuZ+WtZYLTl5LRKkj5prQ9BlZ47RXybI+oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721302544; c=relaxed/simple;
	bh=Lr4G70Hqmyejy0UqENEDN7O9jRtiCQdwhv2l1cx+R/A=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=J37nL3Q1vWkLusUpR5ZA+lzMfigeAhsOBRoyGF8aBfcJMGhNwx49kodgg7o4vs+UyvCto6reQzfGVlnrSA2+9EAYZa29QABhi3dDdbTg/NxF8I5ILoA8RHMPCjFbyGSve/CfmQVymF6yRwg/7I8pHMR07fdNCkb+GxvqHjA2N70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721302544;
	bh=Lr4G70Hqmyejy0UqENEDN7O9jRtiCQdwhv2l1cx+R/A=;
	h=Subject:From:To:Date:From;
	b=Uk0icLG52L2SU3WnRD6lWpii6u82lZeraaDCdWlOYXHNXwPh5rxM/6owVfWUF16iR
	 HdW/rpPysMYO6bkGRTV8h30n4tK34O0gd3E4GbYJR9i1PtQLh5rfF9gDokF0CRUCn6
	 GTveH5VGcAQoZRqJPNdCJNXy58CJfTptwjLKj3eo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2877CC116B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:35:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 17CAEC43638
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.100 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Jul 2024 11:35:44 +0000
Message-Id: <20240718113544.release-6.1.100@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.100
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.100.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.100.xz

Linux kernel version 6.1.100 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.100.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.100.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.100.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.100/v6.1.99

