Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2651BB6B3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728555051; cv=none; b=Q8uY9Am39X8VTo/5Z7VcrNGSzsA+Tj8VUy0Hji6jEXyqDiU8XnUphfJCo67WF/sUmkbghHjIW6HjEU2Qweiv6gT0kgyBqjMU7MujicYhPGzIo8DMG0GFygEWJS+pD9ENipixLj8u6kuMJ+RKB9xxgmW2sGWy7oKODuSgEAm4vUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728555051; c=relaxed/simple;
	bh=eoNwm3ltfflk/JCUVltiiRS+lB/gPA6CKQ6hI52xH9k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=frDFWXecFTw98ChP9Bmm3GVk8qBGdOLEdi22Pddg9cp8wRaZUO87FKNXzcpHoukwKj6ndK3rdhJR8W4zyKMYe3P9MqawSkZeWBlKzPviiQ9LMMM6Jdlvv5rY9DvXCJVGXlqCwN5cbRFViq6p7JyZ4jkus1dhSm3i/1VBvXcrGjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728555051;
	bh=eoNwm3ltfflk/JCUVltiiRS+lB/gPA6CKQ6hI52xH9k=;
	h=Subject:From:To:Date:From;
	b=Xa/7mBbrUfwoHxWoPj3s9vSkxt+f0yTYAzBmmTQkLi36NWYtyOwYT0hxBbjxvadCU
	 gdkVT0UDwZ/WBGluzztIrENjMqn3yp6rkr8wTsN3RRH/zuGngNUFgfQcQPniJwrzjU
	 yhuAF88fuPSdlXTQ11wYWzcyebRUCfxgOiTFnzHg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7B26C4CEC5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:10:50 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 39F0C3803263
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:10:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.55 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Oct 2024 10:10:54 +0000
Message-Id: <20241010101054.release-6.6.55@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.55
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.55.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.55.xz

Linux kernel version 6.6.55 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.55.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.55.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.55.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.55/v6.6.54

