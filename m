Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F92F29ACF6
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195245; cv=none; b=XRRFoowb6PIYTTEAauvvJyqpukIqHcF95MQVRyuzKUWbZe4DWO13UMkjQE5XizmYlU6GYWfau9WTo2jlyguKN0rdwmG3fVrjCHFXu+7N2cpZwoPjbDxDdBWqFmYiryglhUNp31SGcBbDPAR4aLfH9G3PT8KcQz7bOcXerB1Rzlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195245; c=relaxed/simple;
	bh=QMP7DsF5SX8TKAouCAf4O69NkVTnCxEaekE6ExdUYts=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hxEcL255xuBeIlNcT/Nk4JkWALjM9FFqfUUq1mDkrmlso6CSKYrfWIzUPWGgJjmxvQmtYEDuluri6tD4ifW5CEJ9IE+PqmyvX/w6P4XdYxf32Z239SfcEiazIeGmeEjV/hYjpfB/94Sr/mnKZv2zX1R6WLY97EkLvZx7ogol/08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783195245;
	bh=QMP7DsF5SX8TKAouCAf4O69NkVTnCxEaekE6ExdUYts=;
	h=Subject:From:To:Date:From;
	b=R0n+nPZcxCU73fc8NsyHCzO6axNwR8sDIcMJx1Q7/nRCC6Svtg8ltTRB9gyDwQvdk
	 Ry42r+Jx4TuXq9ocktEUhygv7JKCKDRbKptNinwj2026+Q3uS+Wo9+puViWe5opN6w
	 4tzRnXC7IZa6baR/eL9b6Vwf0EWSNNoH3/4tTiDA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 061391F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D09D2393A573
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.177 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 04 Jul 2026 20:00:25 +0000
Message-Id: <20260704200025.release-6.1.177@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.177
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.177.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.177.xz

Linux kernel version 6.1.177 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.177.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.177.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.177.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.177/v6.1.176

