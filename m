Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F29B3570A3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757605842; cv=none; b=eR2ITcRlMoNQd2Y2m876WQPVEJnPFePfVfj9qKkP82BUU7rRsKdq/z6DAVI1K0O3RKxnha/ZhQ7Lx83HpI8NodMHZyMlzWiI4DDSQo39nRyUzelEbZtQLdnr2FJe3f6u6fnn43qJPmiUplCyrmIBe7tYNak90BIWBey2a2jqpHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757605842; c=relaxed/simple;
	bh=cJXUvJ8HquCr1s7kNqKNbszQZbHzQ7cNJBmxDVo9q4Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=OYyXeqHfiGyxxA3weSdynpBuO4vpUjPpYMtxQwOkAYvQSGknZDnO5qnK7CcingCMuhKqg7DhkKy6btsNlzZAtWzPZkXtdUhMb3qF67T8Eaxn55/y0L/okwwbZjRXRgSyFZL3bTQy+Bw2dGXi1IqTVa81hA1T9ff0LUYEQRDg8nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757605842;
	bh=cJXUvJ8HquCr1s7kNqKNbszQZbHzQ7cNJBmxDVo9q4Q=;
	h=Subject:From:To:Date:From;
	b=us+HnWAzVlI6Jl/+kejfxmd4EJ/g7HdZOkoBkRSLanreQrkkLmV2/hiRjLLrHVI/q
	 AcjWR43jQcnziVivOYZWWfx621ul0bxARUQhlTyjNtUX3phUUaBMyh89uOihF0vFai
	 lAJPVCGcp7iyY6HbV+9h8N52lWasxXtyEsUX4dEA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C954BC4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADD4D383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.106 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Sep 2025 15:50:44 +0000
Message-Id: <20250911155044.release-6.6.106@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.106
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.106.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.106.xz

Linux kernel version 6.6.106 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.106.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.106.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.106.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.106/v6.6.105

