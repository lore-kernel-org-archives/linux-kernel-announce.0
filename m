Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEB66A008
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718538044; cv=none; b=qS012Xyjpc13mCPHPQgNBywIjwA2YjsQIcsXvVNbNwS6YMZAsRxLovfSyP32UFUvktdzuEChsl6yVAiwDjML3oWzDNYdFGhUSM03liq9pfwpdqEDxbwN4L3MAMCY5i5XCnuOkcm4pAQSOcWBo/tVbzq0QZ0vEkF0cBRsudD84JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718538044; c=relaxed/simple;
	bh=oftbMp5WDtlnBrDH0a/3pK5ZIwvKTVy0WJiG/RcJGx4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=o6z8cQvfhKYKf/Vy55AE9ViD/xRrX7dMfzhYbODfQnnhgDstUYojMVGZ2PMiZm6lTr40+5O3JOMqhvVbbgdPU7f35KdxxPRyH7S6nFfrC6eZPWVvN0g1IOX1aWUej4gebGS1VGP5tU4Bi/GSQmD5knTnGjXyjDCaGHYMB68HuNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718538044;
	bh=oftbMp5WDtlnBrDH0a/3pK5ZIwvKTVy0WJiG/RcJGx4=;
	h=Subject:From:To:Date:From;
	b=GeoOFKvM1ue9wUOLLUz+x3grmvov8i8FlYOsWkRqgkLfF+WLh445rwmDS5TFu6nhH
	 XxEKbf3qox1SpEWu1DeLWnLDqBCg1K/JISyJB5+rNF2OGXKyj1vslIk4iM/17rGJC8
	 4JsCT2agT6msseB9re+5YFUyX/REadZjSw+7XEf0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E991DC2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:40:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D15D2C43616
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:40:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.278 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 11:40:43 +0000
Message-Id: <20240616114043.release-5.4.278@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.278
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.278.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.278.xz

Linux kernel version 5.4.278 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.278.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.278.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.278.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.278/v5.4.277

