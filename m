Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6575A1991CD
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751793615; cv=none; b=Rckz+P+bIIEQvvGRn+f2z29H/2Xfv8WbM2EQhWGRy4a87C+hHXLtH303r9WNVXr/pR5Gsmjk4wwtd0TkuJ75+UhBvS5s7Z78OpOo1Q1RnyCtVFj4KG9lMmclQ7LV8TYOerKTazb7V77rvZ+bx513wi840xMm0ZCOisKkT3voSOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751793615; c=relaxed/simple;
	bh=UPgAeflbL5gpoDboOMxm2yJLeM+E1mUGHV4ZtuM+UPU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=S2qkb1sqLfXFqUt8JCXDHHCABrFvdKakNVxLUhQKw8YAcW7asdDbB8KwWiBGohHsBqD/AU6EKtC24INHF7epo/AzGpr5w3qmLXNA2z0m7Jsp69fyHb2R2clBsFcSCBwJZyYhaHNa7u/idgxbwxpwJ2B1wzqGi4XNypcckqra9XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751793615;
	bh=UPgAeflbL5gpoDboOMxm2yJLeM+E1mUGHV4ZtuM+UPU=;
	h=Subject:From:To:Date:From;
	b=N6f/JrN9GGj8uGp0guvu0JWMqxfbYGNGrg2MPXgiFQerjJdc7pVAOI+wIojq9ft6D
	 pOkQqzePo8Dje7Vc+DSVQ81bM8uwvUp9Sg7c7FoGB11nEMw9ISvtnSG6BDm0wT+QS5
	 Jgx8MWg3Jzs9nVV4X9A94jsd5yInGyyIYfNn7YaA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 078CDC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:20:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B226538111DD
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:20:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.96 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Jul 2025 09:20:38 +0000
Message-Id: <20250706092038.release-6.6.96@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.96
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.96.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.96.xz

Linux kernel version 6.6.96 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.96.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.96.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.96.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.96/v6.6.95

