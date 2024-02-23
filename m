Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C8112E45
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708673140; cv=none; b=PysKp7jygI0ijhRPYW1gwQxRXYOXWEaK8+viLsZBhr8/4+vWivf/biUvVudCTpsqhKIOEGaU2Z/p1h9Kwqw2QxUdEOFeHU51+u9e9x09BbMWgm4/swMDb2pxbZhHkwHXny5ACKlxfnICXG8lC8i470uQSEC6Sd1RgMW4qX04shI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708673140; c=relaxed/simple;
	bh=3oVA/4hQlsMt/ci/9u1VfEiRDXftEtg2j7vq34pDqJk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rrFk5VgksFbxu+rXGU/bFOEfaaXwjzv9/qQfRyGdNX4JviMCa9IjAsqx0S9RoMWM3B3OICBDWrsh0QCp3y6aW28IY3fspB2YxHhhV9R2Ovh70/7gd7mJiBSzrso+LYY8PecduhWmnU8wRvjJHubW8mW9SkiL+eOWJ/UMfynLBl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708673140;
	bh=3oVA/4hQlsMt/ci/9u1VfEiRDXftEtg2j7vq34pDqJk=;
	h=Subject:From:To:Date:From;
	b=JXAvwHU1i6YwnH7KXwQ8lTYd2GGbN207a+IC8U/2yPsuIVg0m6kZT+s/izx5G0QJD
	 DAnZip8DT8/BdAF1qNKGGdcxXJex1ZI/It6ym2IHO43SMszF2/eTarQnhEVgwlMmCz
	 tcv+jvVyaL789snMT9iwlmmTWsYGcyfyrMuTUzFI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3A783C433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:25:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 1C3DBC395DC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:25:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.307 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Feb 2024 07:25:40 +0000
Message-Id: <20240223072540.release-4.19.307@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.307
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.307.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.307.xz

Linux kernel version 4.19.307 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.307.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.307.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.307.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.307/v4.19.306

