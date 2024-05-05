Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A761E2D60A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 May 2024 21:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714945917; cv=none; b=JRWM+XYqdeJA2Ruwb7LmdPcojHj1z+nHy8BGEONPEDN2hsyUuyhfo2+xiOn7atPQl8JVqMXYxM8Htjr0ySBgEat9MyyD0TV85K4e9UxEaohsmrSMNGQsFBQ5Q61Cn9StIJnzs/kiZ83Pf+Xcmo3cpzn872yI/wX2NaRHY6OqSzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714945917; c=relaxed/simple;
	bh=zqoQSWqVp4CXZjH6SDaPvpbxaIjbv7w5x8FpU6vhLDY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hNAHd6BsO1YTNTtRQ+WNfdfKqj3IOzYJno7nIkJRsuF3ftqxVYx3XVeTE6I2NUfPaMbwNlr8Mixwgq8dPiwDptnbe3+/X2lZsmGgBGnB/ME5wUUDkRav65D3tfUSTIq7O79sxn2zssgJEUyYIV+TVJE2zyAakrXE3sIXaS0WjEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714945917;
	bh=zqoQSWqVp4CXZjH6SDaPvpbxaIjbv7w5x8FpU6vhLDY=;
	h=Subject:From:To:Date:From;
	b=eFMn50Wzir9RZsPhfUdAKAgeh/pd8Np5zDWOHfXbGQ+WkcdGNL742rQqVHSbJ/Fsh
	 qcuzT0EhAWWGhIQ2u8A0NLoRjsjpJjlMIvP1ljC+IuT9ubMz9YhdMIkKaL8GG/o1kc
	 7EcOAfLZ7fETN+D+E4pJYCy2k9aVZm6OvUK32C6U=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49CCFC113CC
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 May 2024 21:51:57 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 3C845C433A2
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 May 2024 21:51:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 05 May 2024 21:51:57 +0000
Message-Id: <20240505215157.release-6.9-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.9-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.9-rc7/v6.8

Linux kernel version 6.9-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.9-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.9-rc7/v6.8

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9-rc7/v6.9-rc6

