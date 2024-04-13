Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FF83F9C0
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713006649; cv=none; b=uclWmkXsUkwWTUj1LQPyune4Altn9edBDFzrZ+utz6HrHnOxhnsw3EPTAKCk1G5ZMsYruZdH1Yjt3i49kWkn4NLHhGlUdh2UzuguTc2LTyMW/TYe5Ha0xHqAR6qmHUvUpuq9k27D1JRHDPDDYfXOJGLw8K1VcE1BkQa49iGQWqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713006649; c=relaxed/simple;
	bh=Rw3eC95uheLfrUagMEgk80NFQAiiceenl7seg93jb4Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kZBY5UKmb66VSuML9hzkG2BOy5hqXJ2I7Vad5RFKdnB5zZ9L6MLWjOgaGeevcRB4/IUQU9nXZZx4sUhaaGHlnQ+ASVcRH+dwPjj7U2Ll+CGBmvhGXVKBSedjhYWeGKfXvVuBTqF9IcMW/TAIjrvBsgxmz9FjtPkgnBqPk4B51NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713006649;
	bh=Rw3eC95uheLfrUagMEgk80NFQAiiceenl7seg93jb4Q=;
	h=Subject:From:To:Date:From;
	b=iOMxz8WF2i5kw5DLezSacWcEWzibpKa2SG6OqviRgC4X2UpD+Pl9qE/Arx9w4suDa
	 6DlkGrBqTs1GneRAOc9Di8DxuQrYcWSWbRPXQwNGmsutkPwN6XpftPB7SCS3KWPz2J
	 337GRPU0vmznniaG5X0Uq35Or/bUPhRZPTVzZtus=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E391FC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:10:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id CE0A8DF7856
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:10:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.312 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 13 Apr 2024 11:10:48 +0000
Message-Id: <20240413111048.release-4.19.312@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.312
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.312.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.312.xz

Linux kernel version 4.19.312 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.312.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.312.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.312.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.312/v4.19.311

