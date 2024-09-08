Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94C3FC11
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725775842; cv=none; b=j1X9cF4BzRMi90c+zq4wfpEBZLSn4B1nKv5l/oJxL6mqQpwnswpVd4admkoOZPI+qGyxJ2ncAAL203OFlTZ0CTvYI7u8VeJjtb6R3hC71h2IrlIYVjxBUJmigkUJ//0gkLEy3qyRzPALrRsXwHB+ZbEIF6dwhk4xEmOyq8cVKzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725775842; c=relaxed/simple;
	bh=aIbYTA7kocs83mj2ExIzczWjtIccYLCQJggXJ0DEJ40=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NjwmIR5rp/rI9e+MDYb06oEeYpwzPnY68izxoWZIU0wxrVhL/vc4r1QlxNR2uRhINPkfO9wZQJ7gL01Ow1XllIMycpoIUShLPDtXipTFw1BV7wJICw+F2I/7HSc+pY7JH4vfBCw+KHI9DjHTyBHBQkDoaIOCglacuTGwl2DADVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725775842;
	bh=aIbYTA7kocs83mj2ExIzczWjtIccYLCQJggXJ0DEJ40=;
	h=Subject:From:To:Date:From;
	b=tg4kENU1RpZO4lVwLZZEmLd393LsSJrVhWCOY+CGsqKSo+9i5xiyv6xBMhL7Ynbbl
	 1uGQoL+9N0VPEcKEaVLfohVh1mA40otqVVe5KWMl1z44MCdEUzbkFGwx/UkhqGG0u7
	 wd/lvX596pmCtjUg4I5SkglistHwByGcWEKg/dG8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F02CC4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:10:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74B7F3805D82
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:10:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.109 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 08 Sep 2024 06:10:43 +0000
Message-Id: <20240908061043.release-6.1.109@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.109
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.109.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.109.xz

Linux kernel version 6.1.109 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.109.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.109.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.109.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.109/v6.1.108

