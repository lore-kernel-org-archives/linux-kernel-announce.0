Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFD4524CE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710531648; cv=none; b=C4MlVSIDvuN9hLtHYQbKqZdosaFf6DX4JhqtlLu3bM0p0R1mBliS1j1mBYtcwnhYMovluPVMEmATAszf42qxCODGPaq0dRBM/+PGqTk/1UO/4YRLp867CNISt27llc1ul7KV+KHIrVIIQ75z90LEFYQdFUfpUEqmwbkn9LgPp9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710531648; c=relaxed/simple;
	bh=cpQjc4NqFr2pVlKlVmg19fLPCsCojFySQPjMhd4jOGQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hzusdRZM8bfSPBCK2pwav0c8zCu1d5CyvWd9whYOBmPNlVe0MyjqJdZxTCVNlOopxlFKNKwlJTDDZ7mszwnnBdJE9or4KF4/WJesbz4BiH1wOhA24tAFETKOgPASDXll6yMu+JHrczCBl8tDhUxVLNy4wNsGmv/1xe+7HssmEUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710531648;
	bh=cpQjc4NqFr2pVlKlVmg19fLPCsCojFySQPjMhd4jOGQ=;
	h=Subject:From:To:Date:From;
	b=h9yPH+Ix9ehMKjFTn7droHkaqrr2zi4aXZEnrkCrNu3m2MfTRlGrEUMLGzJehcMgV
	 t9+NCjLsRP0kjkIenXarkwDDD1+WqIXKCFhfhm2YfTtlasafCKSb+3QdAaW0i8ELV4
	 WmUY8Swp/iI4RAUZXXiKh0W5n7h8E2Nnn9jZitEU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11BEC43390
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id CED31D95060
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.213 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:40:47 +0000
Message-Id: <20240315194047.release-5.10.213@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.213
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.213.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.213.xz

Linux kernel version 5.10.213 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.213.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.213.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.213.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.213/v5.10.212

