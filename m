Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F89B15A4
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 15:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716649251; cv=none; b=EINqF3ObYCebRGFIsZmLofV1q0uBKMbJWp/yACGjusaCUYZ/3XsTZegId5dj7grsWid6S48UQBg2k/UuQBAf/RhdMt6WXwxW257s7HdYOsXG6mlCU0ipL6DZU3roQzsgUUvKXif4SXkYNVnvgHIPUxaelphP73BlKcYVG+c6gxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716649251; c=relaxed/simple;
	bh=VeFZOb883sDJSakfeEILrvXOkyCvFyJAW4IWQUQuQMQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ph9G1F4znHibXLI0DybhBxWhnpyynveMiHOzqABl4iYGRHKf09jgMZtM4VMK1eO205EqOmZWC6rFls/j4huRTuznEOO2k3OQ5s5fVnhTKDbJZ6tzlLT/mcz1a0sAl4XqeKWG2zgeItTHkXG9Hrrmth3ChgLwVSAoQ8uJGeQS6BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716649251;
	bh=VeFZOb883sDJSakfeEILrvXOkyCvFyJAW4IWQUQuQMQ=;
	h=Subject:From:To:Date:From;
	b=XRW4k5gd2ONWwWaWhl4HvmJIXr++BgGjljpOBxn/FD0L/QMPTRzyBLIUMY8uYs0cW
	 S5q5I2y7Bhj3CLYEJeaGohcbjrebvrXR22FzTWxJYplvxK4zpS9GDxeI2VYUHs/J/L
	 ueDAPqvGcvf5ie3W01WiBW7flU2y58AlM27BYHDI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10CA3C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 15:00:51 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 00B58C43617
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 15:00:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 15:00:50 +0000
Message-Id: <20240525150050.release-6.9.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.2.xz

Linux kernel version 6.9.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.2/v6.9.1

