Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E35C17BB9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711518048; cv=none; b=GfuXibSYDfkAc9VOGWftuufJAn0039w0sQ393Maohd33FvtgJSCbsvm1NjrzB4ictjqC2G9rm7GQ5mY7C39lsFWipnAF5IKHUEV3IH5qBq5pqIBF7G25vJMYSPu+vMO1b8XFhOwHktoj1pavklE9D8qVRUF9urRLaQ9gedml2ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711518048; c=relaxed/simple;
	bh=Ighqvkk689X6s0KsZKOriqbW7r4CfP/UG4C4Ntp+QgI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DqG0EewFma4blPMCbdGLCJwju32So5mpeFB0QxPghQzzJBI0vQGuDdz94zs15Pc48g2iczYMGLXrkHGCwkx3go6W52QEt+lkD5KwXQg9kk7o41Hifo/gF9e4ovXP3bjCHj0uLeQZLUUP5ICElK1lK8YelP1CJFfdVh02POSbqVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711518048;
	bh=Ighqvkk689X6s0KsZKOriqbW7r4CfP/UG4C4Ntp+QgI=;
	h=Subject:From:To:Date:From;
	b=twLh8FT6/ooWY7yIjhiKYTW+3yEoNsmJK9Gt9XildTp02ue91IIPGddWMiZ5fmcon
	 KYlTNQ0bfg1Z3jzyLtZqCuZNdIUeGPpN+iwNdef4rS/9m4PSdPIAzO7AQ2/kBWZcz8
	 EBR35e1RLGo+ajhX/APRGQdM+eAB3ODaUo5BV5nM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9B1C43390
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:40:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9FCDFD2D0EB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:40:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:40:47 +0000
Message-Id: <20240327054047.release-6.7.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.11.xz

Linux kernel version 6.7.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.11/v6.7.10

