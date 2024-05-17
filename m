Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAA42D796
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715940941; cv=none; b=nmA3boYJnaN4p6H6axYHonost/cIhJH93ngqcaxwBNDkrolgKN4YK7olH6ZRpeW0PRRbblxaYZS0TlK/KZnYWZEen9dv2enG9l1QnqEOTifkYBxyHgFmI7CXNuGdONbYtiT7oiLLuvjP6F0pOoA3HsPKWYyEwqX7WwUPLOu/de0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715940941; c=relaxed/simple;
	bh=eTOjfnrg4sd2lc3WfdSqn7kSf0nFRzZ9lrozfs6FOgY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NH2ce9RWrRbjHtwmwUBo/K4ZPOLplY9t5RrVKd3AHIt5vV2RN0a+WY5q3PSbqCgF8ewfJmSHpBbmBevbIyflY82deMK3JMlRwSg8WnftH7gjV3tPD+2ZT6l82beg6xpzl7L1T2BQwQ9GQhylc8Xb+HN0YhKWSBU8/nfbT/+w1kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715940941;
	bh=eTOjfnrg4sd2lc3WfdSqn7kSf0nFRzZ9lrozfs6FOgY=;
	h=Subject:From:To:Date:From;
	b=HDdzGuEko4Bxhk10REBXl+njrhw2BiMrhCvF/NAiJ08PDqRq6EerfPhno2MPSO+m0
	 Q1vWBQgAc5ZOgMYyG7qYFXPn3tFCGLtK1Bc2uxW6H0ktib1irlsPNRHhP1H0qwQXaa
	 rgw9Rg0yCWlFbeRbHHsNok8xRSNHvABMivHCcVQQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA6CEC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:15:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id DC21BC1614E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:15:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.91 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 May 2024 10:15:40 +0000
Message-Id: <20240517101540.release-6.1.91@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.91
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.91.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.91.xz

Linux kernel version 6.1.91 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.91.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.91.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.91.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.91/v6.1.90

