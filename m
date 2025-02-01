Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8C1ADC69
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738431636; cv=none; b=M+zXMi7hFlmrxfQ9MM1OR6pQV5BmxigluiEt1VFHoV3ykT8jET4a3THHx91VWTWgvC0nb5w+hYirux/tEy32SbhFOgCXQFRj0MbGi/+7GvUCrlmtRHpK881GJtfiH9fLExpnp2Z4fQDj7O0mWTPei9uKDgA9pvZUT/iV9ie8hog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738431636; c=relaxed/simple;
	bh=pxPIX8k+2LBd1NLlGVFUpYBasQfMKmntnkiAXp8F8xk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JZxppQMkrzhQc1vJnRGw70w8pYiAUpOrKIHFOnvGfVEJIc6ix/EedTtUrkThm9N8QH55kyeiQqJApgRPeYHicRGSCf2PDbqkQ1s73zGDVGQhkCasbQL73UbMaip4Rf0QwHFj6r4zOwXxdSC73FLiLgf9grLBCK6qWggBCpw6irw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738431636;
	bh=pxPIX8k+2LBd1NLlGVFUpYBasQfMKmntnkiAXp8F8xk=;
	h=Subject:From:To:Date:From;
	b=WSqnEn4P1vVzPPy/H5bJUISDegsg3IWfeebIO7COSpJOt1E8V+dMhN14RyLkucjb3
	 1L8iKudj01jEf4QVpeWWokYAFLK+I5j2luHDaBwqFm0SPTNrBuFxqH6eNkG+txiTXl
	 Qh6k0s3Yepk1qB6tmHDCJ+zpzoqGIvxtQO+SbqYY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3B4BC4CED3
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:40:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 766DF380AA7E
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:41:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.178 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 01 Feb 2025 17:41:01 +0000
Message-Id: <20250201174101.release-5.15.178@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.178
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.178.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.178.xz

Linux kernel version 5.15.178 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.178.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.178.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.178.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.178/v5.15.177

