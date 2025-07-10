Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AFC272E54
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752157819; cv=none; b=kXGpWSz/rgmjarnpQ0xnzlN5wG1YX+ZWqEja8bJsj68Vtk9o40PQ9ngUB3eqJGm9TkR/RBH/CuYP2k/pjrbo+booV3rI+kkGaqL2K605/b0WJjW6aXrzEekHsBBOHauWNzS8y+JRujfohlu8wH8lU01Vz8/VhI/KTiNiVzBiSiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752157819; c=relaxed/simple;
	bh=S6CZUo8ASbF8bkTJGNSYn/b6EsifYUmE5X96x42QCOs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jwWji0GG842UNeNg6oGIx4uZN+6Q5ts2lg0szVR/7NCFwSShZpScMn+6v/NOKwc9qmrX7a6xbf8XtqaKapT9NmbJP4A4Wnl57xm72OwxWExKkjnTfYVeg9wpRgQaDC+cwCEACwsqVFrp2smyzxEwD+GYgBy/BliAmnJ1OKT6zdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752157819;
	bh=S6CZUo8ASbF8bkTJGNSYn/b6EsifYUmE5X96x42QCOs=;
	h=Subject:From:To:Date:From;
	b=CxaPBG6XfxzRugJUgKGsiYKrz0KYlFUUu5lXE7iXHhLxSYtwo7qL6ZLlb1Jh6qbjc
	 uzqFHqIOH4TA2fZKhshLP42TKK0gWcMVJW/YjfJWc1zIZF5sz8frQU43EZhrZ52LIn
	 eJ1ekgOozTJwDTbLXPGNhr6gZF1zlTJbwoncZlTw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C558C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:30:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1DCE383B262
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:30:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.37 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Jul 2025 14:30:39 +0000
Message-Id: <20250710143039.release-6.12.37@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.37
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.37.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.37.xz

Linux kernel version 6.12.37 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.37.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.37.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.37.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.37/v6.12.36

