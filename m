Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B468633D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734629131; cv=none; b=lCzY4dfjC2nqnN3Jh5FrZxOFi1vZMvM+qlWSAt0FZ8j0qcLfD4+8E+jc3baFmkl4rDFPEHRXCUrNeQ3G4mRHtD5S3bgclQitGx4AavvCCZ1ahKlnybVeCYMScAYkSkZwy9lmV1MFTOdqYrg6OX7oEEZZb8wn6cV/3bSL6h6szSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734629131; c=relaxed/simple;
	bh=4EtK+e8fgdTaXCQIn5bi9BdzKcH4itEI8SIqGEPZwoE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Hz4a+QvIJWk7/L/ylDeMoDhKXNArw99zM3XVI8QMBpdKhLihDCPc/EMzihmtv053jZ94djgHa+VB/x0CApIvFpQCBMY7xHv3UoSQ8itd8pc5CSDluCfCvzEO6oU325vvusfhUAm+kx71K8mX4VmCxiZjRZ0UsqSOU4VeMYI8Yl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734629131;
	bh=4EtK+e8fgdTaXCQIn5bi9BdzKcH4itEI8SIqGEPZwoE=;
	h=Subject:From:To:Date:From;
	b=jO4nBdfVC6yAXU7a6SbSD3iJX86T08dWocLicAYqDGTpf/nPrfoZvaERvvJl1wZhl
	 KWCaAVfhVFgfuxRMpRXPj5Tq3zYcYJGd8mGYHzn8Bi8HfQhGfVjDiJ8ZH0L7D/aUhA
	 IKDEioz/OWfuVM7mBWg5KcJJ51G7RRvam9K3CACY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF8F8C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:25:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B42323806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:25:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.175 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Dec 2024 17:25:48 +0000
Message-Id: <20241219172548.release-5.15.175@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.175
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.175.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.175.xz

Linux kernel version 5.15.175 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.175.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.175.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.175.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.175/v5.15.174

