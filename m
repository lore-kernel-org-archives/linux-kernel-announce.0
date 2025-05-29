Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC65A55
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 May 2025 09:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748511302; cv=none; b=dyQgHQkzqZ/Af7AUix01AGnH/5pUCdV00OiEpfGrtctoG+drA3nftX11BjcjqnSMX9D8Q3sLd6geBIm6/CfmPdvXXL0LQB5PDfoMdo1rz8lhyjXJb/eVqj8HhAzYWAJWTTc0zvLKWwbozdJYUbP9BryG7et28ykYUcuR80U7TJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748511302; c=relaxed/simple;
	bh=3LRYfsdo9qN+NxXkjtV/eovLl9lPfm68+hhGtnSVNKQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Qy12VtY1O9K4WKl2Vl5IOYpUtbqntf0o9bcsQCOmoU1nJ+LXBnrpPpA2yTkVY8J7dCoVgH3uPBl4s5y2iwp4EENmvFjEbMMJYsHvNejkWH95Dn0NQbXQ3O0tDeEh5JxzkS7b7Ojtw96Pck36z06ZCKFFuUjdR8DcDultxKXTOak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1748511302;
	bh=3LRYfsdo9qN+NxXkjtV/eovLl9lPfm68+hhGtnSVNKQ=;
	h=Subject:From:To:Date:From;
	b=GBQcbBd8L1OSaOvNu52mA9SDHdmLpsaL4qfql/92zUZxKoa2h2XSIrWygyAtDulL9
	 W2vSrOZn5TcbEz1usI+S1RSdblGfKLMzBaAIHZOr9WqcX2sSzChMZZiTgtkTkAcFlZ
	 J/KNHbuvgTeY0vA22TB1pQVrlku9jRSwH5jjZJ/0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D2FCC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 May 2025 09:35:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE4BF39F1DEE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 May 2025 09:35:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 29 May 2025 09:35:35 +0000
Message-Id: <20250529093535.release-6.14.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.9.xz

Linux kernel version 6.14.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.9/v6.14.8

