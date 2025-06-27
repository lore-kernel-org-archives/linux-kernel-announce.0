Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A378129E0E1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751019620; cv=none; b=RLrwTkGhgY5oobimPhdZij+n+DEN19LBX7Zhmti6oL6FIW6cfUBb/6udbh1zUMWILQQm8o8an9nFKL/R//RbtAShOOr8DR9zwl7WfP7SDj8gPlIufrgmxYLlYf3pyqbA4MR+e+xClLFjvQohmwL6LYIh+Er53a2+Z2furboyKLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751019620; c=relaxed/simple;
	bh=PZ7G6eEDy9wzrqez0AhOKV2Qa0JtwOygsPwL2vab+MU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a5wjUi/8xktsefSWz4M7AZAcTFFunzFu+LB9vabTaq7nkDbWuyKJHLGA86+qlwrOSJdWg4f8e2hmHBwmcC7bHui6KBkD7yrpxF7aFfWboR22e9tKOjFiTKZInhQu4yoGV8Rqls4bk1no4bSedoliUdy5NIFBvHvlpMA1GfE+W5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751019620;
	bh=PZ7G6eEDy9wzrqez0AhOKV2Qa0JtwOygsPwL2vab+MU=;
	h=Subject:From:To:Date:From;
	b=AM+Nz5xDxyEZq1AiqNuCq2q9Od0EcV5S91/MeIXxJAOAx/dSgaHuablMpvecdENo9
	 JcqrEHM7HtheCflyfv+NBwvhdxr7IawNj1VQlayZs4TyGNVvX1ovyX0B/wJovn9lP0
	 SOzMAfQomSSO6W276DFilm+dAd7Kl+jSXN4ljim8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78CCAC4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:20:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1B3E3A40FDC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:20:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.239 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Jun 2025 10:20:45 +0000
Message-Id: <20250627102045.release-5.10.239@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.239
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.239.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.239.xz

Linux kernel version 5.10.239 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.239.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.239.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.239.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.239/v5.10.238

