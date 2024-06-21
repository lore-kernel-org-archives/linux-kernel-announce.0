Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFE5374CB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 12:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718974549; cv=none; b=ZYfNdOe12pSwR253T0VxG5YAYkgY7PtouDt01ZPPaPwtTExax7AqWtJWguAVpKW1G+Ym3MgBbGIhOKnc4ZD26Ifzcqy+tAdmeRgpTNJzNif2hskieWFoq44ac5CItplqG347cg7eG7+FGZQRG8UTchEjzE4zsgfw4SA9a5Azggc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718974549; c=relaxed/simple;
	bh=ej/gskbUV/bu0HPXspmgkJs+mrL4RPoSyvZFqTntKjg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nqiiGC5XX8a7wM+lcGIgP7MvxozAYrPsZn5hHU2XGM6q1Kl/fWeNV+599AVzCkHXoDaya3R8sVru8EEyNVy9wQrM5OnsxFl7BaMlrP9p/8JC/BW1UVwz46dOdlq4Epo08jzk3ZbIgHSQY7SVBoHapYN5W9chZC48tWXoiZm3j9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718974549;
	bh=ej/gskbUV/bu0HPXspmgkJs+mrL4RPoSyvZFqTntKjg=;
	h=Subject:From:To:Date:From;
	b=FfYfDWdMYBFWf34TXHpqHRG1EFS7K08bGrcCaxDyYb3bElejsnxbdLPut28kIuk8+
	 nwu/hc0lg4WKTU+TKY1+4BoBjfiJVy22Y1yriCQ5F5CPEJRjYQCC/FisF7cmQ44S0s
	 uFhopeYeBrXeg2tS7TzIt6jRa05ZRg53gONHnqXQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A4F9C3277B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 12:55:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 8FD7DE7C4C5
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 12:55:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.95 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Jun 2024 12:55:48 +0000
Message-Id: <20240621125548.release-6.1.95@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.95
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.95.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.95.xz

Linux kernel version 6.1.95 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.95.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.95.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.95.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.95/v6.1.94

