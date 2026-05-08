Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930A034A786
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 14:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778251270; cv=none; b=skZpW032z9L1x3PECqAXI14BnD7icEBiSi80g7b/4Xt3hmbWvOUrcr8prm0jIMh37VA83NklNWw5kmQFu6ouZPr9fJKIYX1ho7mh3JcDtrYy7HvOR3pLO7oBkfa1u0b4kBFT1YjxZ+5S1OpProNt/uio+rntFxpQInH72t8XHSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778251270; c=relaxed/simple;
	bh=NWAMueAXNi1PwV6pybRAdCVEjwv7kZfljQjy8kQ8eHQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KoaGkuC/e2K7Kb1mvMNQ0etbhuqx1gdB/KBkaeLiaNWwBr/OLg9+kiTSSfmsweUKdiUMvvVoR0UuecVdswR1Byap5v6JgGnhktfx9vgL6m+j3rNMidtipd9M3i+x7IgOASsSwz+1Gyri0xWCS4jaaRlHE2CaIwUwP/I0TRbqihM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778251270;
	bh=NWAMueAXNi1PwV6pybRAdCVEjwv7kZfljQjy8kQ8eHQ=;
	h=Subject:From:To:Date:From;
	b=WAJQwV05bveyYSCFJHq6/rQ4g+oHzglc5XV3yDZTviuBjppAo1u2asMwsJJDun7bs
	 OWYP5qmdIL8Rq83RCzo414PDli7trNpO9z6ybKAOCeXwjE6jidHDp5ci1GT0bDyZ5Q
	 9a2L0eupKckSzEIFAxY65vxNwmUD/G+Zs2FDws7w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E3E5C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 14:41:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0568B3811963
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 14:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.206 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 14:40:18 +0000
Message-Id: <20260508144018.release-5.15.206@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.206
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.206.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.206.xz

Linux kernel version 5.15.206 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.206.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.206.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.206.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.206/v5.15.205

