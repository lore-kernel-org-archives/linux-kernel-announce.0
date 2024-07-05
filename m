Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CFA27452
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720164340; cv=none; b=Rbp48xag7DHnM7GVXqBvfSmxzFCYPfyYzJWdZgcn4U5sykrjLp741XhIOPqWobl2bajCuJ6wrm9pl77FCd9WXXu+CoGXcA9jUBBhYVpt+5VuikKIvWTYfwJyVwD+zs7E4us2hWW2UZyGQhePkVsYeot3R4gisIq+5MyQ7+TKYYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720164340; c=relaxed/simple;
	bh=B7xg9MtFp5ucmO/uJllkvLLFgOnItOf1kkgjxvDEwhw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CpL9gd/9mpA2LLbPjlJgDeiT4ljn2XnlOUoevdRyqYj+LLxFKNQnhsqf0EHKvwRXimJf0nftvTqkxAP0z8hMeo2bPu4Gk2dYLlSQ4Mtm0FhAa4m1fFBI6sE8WjSMJtejcbU68GUV03NoZp6UPvpzP0dC3wkWSQhDTGTK2ggDQj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720164340;
	bh=B7xg9MtFp5ucmO/uJllkvLLFgOnItOf1kkgjxvDEwhw=;
	h=Subject:From:To:Date:From;
	b=FIK8XNIbY69DvWiT0kKGamjZ7Y2w38Bwvs9Za0CQvwpiByWs8VE7y4sYnV4PYoORs
	 egnb6BXU3ntz4SLOvWGnnyvRXFtQTF3KaUL9PUTtBwtI5+qWhFKQ6UnBZgtGtcmh6E
	 Pbkzf4MZogUfnPeENEZZxLwA+4srM9fHX1+bBj2U=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14A5C116B1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:25:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BCE37C433A2
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:25:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.221 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jul 2024 07:25:39 +0000
Message-Id: <20240705072539.release-5.10.221@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.221
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.221.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.221.xz

Linux kernel version 5.10.221 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.221.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.221.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.221.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.221/v5.10.220

